package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Word {
		private int word_num;
		private String word_content;
		private int word_level;
		private String study_date;
		private int word_id;
		private String word_pron;
	
}