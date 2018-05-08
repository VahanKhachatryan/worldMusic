package com.worldmusic.worldmusic.controller;

import com.worldmusic.worldmusic.model.Album;
import com.worldmusic.worldmusic.model.User;
import com.worldmusic.worldmusic.repository.AlbumRepository;
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
public class AlbumController {
    @Autowired
    private AlbumRepository albumRepository;
    @Autowired
    private ArtistRepository artistRepository;
    @Autowired
    private MusicRepository musicRepository;
    @Autowired
    private GenreRepository genreRepository;

    @GetMapping("/albums")
    public String albumPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        map.addAttribute("musics", musicRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "album";
    }

    @GetMapping("/allAlbum")
    public String genrePage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("artists", artistRepository.findAll());
        return "allAlbums";
    }

    @PostMapping("/albumView")
    public String albumView() {
        return "redirect:/allAlbum";
    }

    @GetMapping("/deleteAlbum")
    public String genreDelete(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("album", new Album());
        return "deleteAlbum";
    }

    @GetMapping("/albumDelete")
    public String deleteAlbum(@RequestParam("albumId") int id) {
        albumRepository.delete(id);
        return "redirect:/deleteAlbum";
    }

    @GetMapping("/albumSingle")
    public String albumSingle(@RequestParam("albumId") int id, ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        Album album = albumRepository.findOne(id);
        map.addAttribute("musics", musicRepository.findAllByAlbumId(album.getId()));
        map.addAttribute("genres", genreRepository.findAll());
        map.addAttribute("albums", albumRepository.findAll());
        map.addAttribute("genres", genreRepository.findAll());
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "singleAlbum";
    }

}
