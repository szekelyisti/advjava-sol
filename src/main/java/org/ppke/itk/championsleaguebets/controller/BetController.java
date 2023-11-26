package org.ppke.itk.championsleaguebets.controller;

import lombok.RequiredArgsConstructor;
import org.ppke.itk.championsleaguebets.controller.dto.BetDto;
import org.ppke.itk.championsleaguebets.domain.Bet;
import org.ppke.itk.championsleaguebets.domain.Result;
import org.ppke.itk.championsleaguebets.repository.BetRepository;
import org.ppke.itk.championsleaguebets.repository.CustomBetRepository;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/bets")
@RequiredArgsConstructor
@RestController
public class BetController {
    private final BetRepository betRepository;
    private final CustomBetRepository customBetRepository;

    @GetMapping(value = "/{matchId}/{username}")
    public BetDto getBet(@PathVariable Integer matchId, @PathVariable String username) {
        Bet bet = betRepository.findByUserOfBetUsernameAndMatchOfBetId(username, matchId).get();
        return BetDto.fromBet(bet);
    }

    @GetMapping(value = "/{matchId}")
    public List<BetDto> getBet(@PathVariable Integer matchId) {

        return betRepository.findAllByMatchId(matchId).stream()
                .map(bet -> BetDto.fromBet(bet))
                .toList();
    }

    @PostMapping(value = "/{matchId}/{username}")
    public BetDto saveBet(@RequestBody Result result,
                          @PathVariable Integer matchId,
                          @PathVariable String username) {
        Bet bet = customBetRepository.saveBet(matchId, result, username);
        return BetDto.fromBet(bet);
    }

    @DeleteMapping(value = "/{matchId}/{username}")
    public void deleteBet(@PathVariable Integer matchId, @PathVariable String username) {
        customBetRepository.deleteBet(matchId, username);
    }
}