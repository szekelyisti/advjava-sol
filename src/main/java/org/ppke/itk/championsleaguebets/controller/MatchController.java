package org.ppke.itk.championsleaguebets.controller;

import lombok.RequiredArgsConstructor;
import org.ppke.itk.championsleaguebets.domain.Match;
import org.ppke.itk.championsleaguebets.repository.MatchRepository;
import org.ppke.itk.championsleaguebets.repository.TournamentGroupRepository;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/matches")
public class MatchController {
    private final MatchRepository matchRepository;

    @Secured("ROLE_ADMIN")
    @GetMapping(value = "/{groupId}")
    public List<Match> getMatchesByGroupId(@PathVariable("groupId") Integer groupId) {
        return matchRepository.findByTournamentGroupId(groupId);
    }


}
