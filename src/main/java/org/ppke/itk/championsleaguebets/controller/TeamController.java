package org.ppke.itk.championsleaguebets.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.ppke.itk.championsleaguebets.domain.Team;
import org.ppke.itk.championsleaguebets.repository.TeamRepository;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

import static org.springframework.http.MediaType.APPLICATION_OCTET_STREAM;
import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;
import static org.springframework.util.MimeTypeUtils.APPLICATION_OCTET_STREAM_VALUE;

@Tag(name = "Team")
@Slf4j
@RestController
@RequiredArgsConstructor
public class TeamController {

    private final TeamRepository teamRepository;

    @Operation(summary = "Retrieve list of teams")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "List of teams retrieved"),
            @ApiResponse(responseCode = "400", description = "Invalid url params supplied")
    })
    @GetMapping("/teams")
    public List<Team> getTeams(@RequestParam(required = false, defaultValue = "100") Integer limit,
                               @RequestParam(required = false, defaultValue = "desc") String sort) {

        if ( !sort.equalsIgnoreCase("desc") && !sort.equalsIgnoreCase("asc") ) {
            throw new IllegalArgumentException("Invalid sorting param!!!");
        }
        var sortParam = sort.equalsIgnoreCase("asc") ?
                Sort.by(Sort.Direction.ASC, "rankingPoints") : Sort.by(Sort.Direction.DESC, "rankingPoints");

        Page<Team> teams = teamRepository.findAll(PageRequest.of(0, limit, sortParam ));

        return teams.toList();

    }

    @GetMapping(value ="/rankings", produces = APPLICATION_JSON_VALUE)
    public List<Team> getTeamsWithRankingPoints(@RequestParam
                                                Double rankingPoints) {
        return teamRepository.findByRankingPointsLessThan(rankingPoints);
    }


    @GetMapping(value ="/teams/{id}", produces = APPLICATION_JSON_VALUE)
    public Team getTeamById(@PathVariable("id") Integer id) {

        return teamRepository.findById(id).get();
    }

    @GetMapping(value = "/teams", produces = APPLICATION_OCTET_STREAM_VALUE)
    public ResponseEntity<Resource> getTeamsAsTxt() throws IOException {

        byte[] binaryData = FileCopyUtils.copyToByteArray((new ClassPathResource("static/teams.txt"))
                .getInputStream());
        HttpHeaders header = new HttpHeaders();
        header.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=teams.txt");

        ByteArrayResource resource = new ByteArrayResource(binaryData);

        return ResponseEntity.ok()
                .headers(header)
                .contentLength(resource.contentLength())
                .contentType(APPLICATION_OCTET_STREAM)
                .body(resource);
    }




}


