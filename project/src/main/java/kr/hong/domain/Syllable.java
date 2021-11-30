package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Syllable {
		private int syl_num;
		private String syl_content;
		private int syl_level;
		private String study_date;
		private int syl_id;
		private String syl_pron;
	
}