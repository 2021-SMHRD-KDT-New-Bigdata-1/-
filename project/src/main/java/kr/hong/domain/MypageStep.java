package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MypageStep {
		private String num;
		private String content;
		private String study_date;
		private float accuracy;
}