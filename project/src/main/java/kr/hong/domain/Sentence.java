package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Sentence {
		private int sen_num;
		private String sen_content;
		private int sen_level;
		private String study_date;
		private int sen_id;
		private String sen_pron;
	
}