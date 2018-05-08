package com.worldmusic.worldmusic.controller;

import com.worldmusic.worldmusic.model.*;
import com.worldmusic.worldmusic.repository.*;
import com.worldmusic.worldmusic.security.CurrentUser;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
public class MainController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private MusicRepository musicRepository;
    @Autowired
    private AlbumRepository albumRepository;
    @Autowired
    private GenreRepository genreRepository;
    @Autowired
    private ArtistRepository artistRepository;
    @Autowired
    private NewsRepository newsRepository;
    @Value("${worldmusic.product.upload.path}")
    private String imageUploadPath;

    @GetMapping("/home")
    public String mainPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("musicsLimit", musicRepository.orderByMusic());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("newsis", newsRepository.findAll());
        map.addAttribute("user", new User());
        map.addAttribute("music", new Music());
        map.addAttribute("album", new Album());
        map.addAttribute("genre", new Genre());
        map.addAttribute("artist", new Artist());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }

        return "index";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "redirect:/home";
    }

    @RequestMapping(value = "/image", method = RequestMethod.GET)
    public void getImageAsByteArray(HttpServletResponse response, @RequestParam("fileName") String fileName) throws IOException {
        InputStream in = new FileInputStream(imageUploadPath + fileName);
        response.setContentType(MediaType.ALL_VALUE);
        IOUtils.copy(in, response.getOutputStream());
    }

    @GetMapping("/404")
    public String error404(ModelMap map) {
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        return "404";
    }
    @GetMapping("/500")
    public String error500(ModelMap map) {
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        return "500";
    }

    @GetMapping("/aboutUs")
    public String aboutUsPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        map.addAttribute("genres", genreRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "aboutUs";
    }

    @GetMapping("/loginErr")
    public String loginErr(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "loginErr";
    }

    @GetMapping("/search")
    public String searchMusic(@RequestParam("name") String name, ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        User user;
        if (userDetails != null) {
            user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        if (!name.isEmpty()) {
            map.addAttribute("name", name);
            List<Music> searchMusics = musicRepository.findMusicsByNameContains(name);
            List<Album> searchAlbums = albumRepository.findAlbumsByNameContains(name);
            List<Artist> searchArtists = artistRepository.findArtistsByNameContainsOrSurnameContains(name, name);
            List<Genre> searchGenres = genreRepository.findGenresByNameContains(name);
            if (searchMusics.size() != 0 || searchAlbums.size() != 0 || searchArtists.size() != 0 || searchGenres.size() != 0) {
                if (searchMusics.size() > 0) {
                    map.addAttribute("searchMusics", searchMusics);
                }
                if (searchAlbums.size() > 0) {
                    map.addAttribute("searchAlbums", searchAlbums);
                }
                if (searchArtists.size() > 0) {
                    map.addAttribute("searchArtists", searchArtists);
                }
                if (searchGenres.size() > 0) {
                    map.addAttribute("searchGenres", searchGenres);
                }
                return "search";
            }
            map.addAttribute("message","No Results");
            return "search";
        }
        map.addAttribute("message","No Results");
        return "search";
    }

}
