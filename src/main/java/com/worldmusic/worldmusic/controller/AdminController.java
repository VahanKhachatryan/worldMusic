package com.worldmusic.worldmusic.controller;

import com.worldmusic.worldmusic.model.*;
import com.worldmusic.worldmusic.repository.*;
import com.worldmusic.worldmusic.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Controller
public class AdminController {
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

    @GetMapping("/admin")
    public String postPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("newsis", newsRepository.findAll());
        map.addAttribute("user", new User());
        map.addAttribute("music", new Music());
        map.addAttribute("album", new Album());
        map.addAttribute("genre", new Genre());
        map.addAttribute("artist", new Artist());
        map.addAttribute("news", new News());
        return "admin";
    }


    //    --ADD GENRE--
    @GetMapping("/addGenre")
    public String genrePage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("newsis", newsRepository.findAll());
        map.addAttribute("user", new User());
        map.addAttribute("music", new Music());
        map.addAttribute("album", new Album());
        map.addAttribute("genre", new Genre());
        map.addAttribute("artist", new Artist());
        map.addAttribute("news", new News());
        return "addGenre";
    }

    @GetMapping(value = "/saveGenre")
    public String saveGenre(@ModelAttribute("genre") Genre genre) {
        genreRepository.save(genre);
        return "redirect:/addGenre";
    }

    //    --END ADD GENRE--
// --ADD ARTIST--
    @GetMapping("/addArtist")
    public String addArtistPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("", artistRepository.findAll());
        List<Gender> genders = Arrays.asList(Gender.values());
        map.addAttribute("genders", genders);
        map.addAttribute("artist", new Artist());
        return "addArtist";
    }

    @PostMapping(value = "/saveArtist")
    public String saveArtist(@Valid @ModelAttribute("artist") Artist artist, @RequestParam("image") MultipartFile multipartFile) throws IOException {
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File file = new File(imageUploadPath + picName);
        multipartFile.transferTo(file);
        artist.setPhoto(picName);
        artistRepository.save(artist);
        return "redirect:/addArtist";
    }

    // --END ADD ARTIST
    // --ADD ALBUM--
    @GetMapping("/addAlbum")
    public String albumPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("newsis", newsRepository.findAll());
        map.addAttribute("user", new User());
        map.addAttribute("music", new Music());
        map.addAttribute("album", new Album());
        map.addAttribute("genre", new Genre());
        map.addAttribute("artist", new Artist());
        map.addAttribute("news", new News());
        return "addAlbum";
    }

    @PostMapping(value = "/saveAlbum")
    public String saveAlbum(@Valid @ModelAttribute("album") Album album, @RequestParam("image") MultipartFile multipartFile) throws IOException {
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File file = new File(imageUploadPath + picName);
        multipartFile.transferTo(file);
        album.setAlbumImg(picName);
        albumRepository.save(album);
        return "redirect:/addAlbum";
    }

    // --END ADD ALBUM--
//     --ADD MUSIC--
    @GetMapping("/addMusic")
    public String addMusicPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("newsis", newsRepository.findAll());
        map.addAttribute("user", new User());
        map.addAttribute("music", new Music());
        map.addAttribute("album", new Album());
        map.addAttribute("genre", new Genre());
        map.addAttribute("artist", new Artist());
        map.addAttribute("news", new News());
        return "addMusic";
    }

    @PostMapping(value = "/saveMusic")
    public String saveMusic(@ModelAttribute("music") Music music, @RequestParam("musicImg") MultipartFile musicImg, @RequestParam("musicName") MultipartFile musicName) throws IOException {
        String picName = System.currentTimeMillis() + "_" + musicImg.getOriginalFilename();
        String musicPath = System.currentTimeMillis() + "_" + musicName.getOriginalFilename();
        File picture = new File(imageUploadPath + picName);
        File song = new File(imageUploadPath + musicPath);
        musicImg.transferTo(picture);
        musicName.transferTo(song);
        music.setPicture(picName);
        music.setMusic(musicPath);
        musicRepository.save(music);
        return "redirect:/addMusic";
    }
//    --END ADD MUSIC

    //    --ADD NEWS--
    @GetMapping("/addNews")
    public String addNewsPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("newsis", newsRepository.findAll());
        map.addAttribute("news", new News());
        return "addNews";
    }
    @PostMapping(value = "/saveNews")
    public String saveNews(@ModelAttribute("news") News news, @RequestParam("newsImg") MultipartFile multipartFile) throws IOException {
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
        File file = new File(imageUploadPath + picName);
        multipartFile.transferTo(file);
        news.setNewsImage(picName);
        newsRepository.save(news);
        return "redirect:/addNews";
    }

// --END NEWS--

}
