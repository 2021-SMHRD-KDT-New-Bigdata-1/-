package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Test {
		private int num;
		private String content;
		private String study_date;
		private String reg_date;
		private float accuracy;
		private String weak;
		
}