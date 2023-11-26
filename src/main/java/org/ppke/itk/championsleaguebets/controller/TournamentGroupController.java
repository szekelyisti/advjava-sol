package org.ppke.itk.championsleaguebets.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.ppke.itk.championsleaguebets.domain.TournamentGroup;
import org.ppke.itk.championsleaguebets.repository.TournamentGroupRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/groups")
public class TournamentGroupController {

    private final TournamentGroupRepository tournamentGroupRepository;

    @GetMapping(value="/{id}")
    public TournamentGroup getGroupById(@PathVariable("id") Integer id) {
        return tournamentGroupRepository.findById(id).get();

    }

    @GetMapping
    public List<TournamentGroup> getGroups() {
        return tournamentGroupRepository.findAll();
    }
}
