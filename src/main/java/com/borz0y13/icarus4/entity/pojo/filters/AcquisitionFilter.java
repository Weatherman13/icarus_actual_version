package com.borz0y13.icarus4.entity.pojo.filters;

import com.borz0y13.icarus4.jacson.CustomDateSerializer;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
@JsonPropertyOrder({ "end", "start" })
public class AcquisitionFilter {
   @JsonSerialize(using = CustomDateSerializer.class)
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date end;
   @JsonSerialize(using = CustomDateSerializer.class)
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date start;
}
