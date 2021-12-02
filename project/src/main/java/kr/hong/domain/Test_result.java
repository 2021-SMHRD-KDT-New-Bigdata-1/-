package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Test_result {
	private float speak_accuracy;
	private String user_id;
	private String weak;
	private float lip_accuracy;
	private String study_date;
	private int id;
}