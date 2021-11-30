package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Syllable {
		private int num;
		private String content;
		private int level;
		private String study_date;
		private int id;
		private String pron;
	
}