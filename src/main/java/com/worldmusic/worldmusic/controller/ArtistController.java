package com.worldmusic.worldmusic.controller;

import com.worldmusic.worldmusic.model.Artist;
import com.worldmusic.worldmusic.model.User;
import com.worldmusic.worldmusic.repository.ArtistRepository;
import com.worldmusic.worldmusic.repository.GenreRepository;
import com.worldmusic.worldmusic.repository.MusicRepository;
import com.worldmusic.worldmusic.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ArtistController {
    @Autowired
    private ArtistRepository artistRepository;
    @Autowired
    private GenreRepository genreRepository;
    @Autowired
    private MusicRepository musicRepository;

    @GetMapping("/artists")
    public String artistPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "artist";
    }

    @GetMapping("/allArtist")
    public String genrePage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("artists", artistRepository.findAll());
        return "allArtists";
    }

    @PostMapping("/artistView")
    public String albumView() {
        return "redirect:/allArtists";
    }

    @GetMapping("/deleteArtist")
    public String genreDelete(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("artist", new Artist());
        return "deleteArtist";
    }

    @GetMapping("/artistDelete")
    public String deleteArtist(@RequestParam("artistId") int id) {
        artistRepository.delete(id);
        return "redirect:/deleteArtist";
    }

    @GetMapping("/artistSingle")
    public String musicSingle(@RequestParam("artistId") int id, ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        Artist artist = artistRepository.findOne(id);
        map.addAttribute("artist", artist);
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("musics", musicRepository.findOne(id));
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "singleArtist";
    }


}
