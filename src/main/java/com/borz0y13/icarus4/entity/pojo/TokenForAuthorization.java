package com.borz0y13.icarus4.entity.pojo;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;

@JsonIgnoreProperties(ignoreUnknown = true)
@ToString
@Data
public class TokenForAuthorization {

    private String token;

    @JsonCreator
    public TokenForAuthorization(@JsonProperty("data") String token) {
        this.token = token;
    }
}
