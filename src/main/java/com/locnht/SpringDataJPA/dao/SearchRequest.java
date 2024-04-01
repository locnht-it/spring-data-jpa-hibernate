package com.locnht.SpringDataJPA.dao;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchRequest {

    private String firstname;

    private String lastname;

    private String email;
}
