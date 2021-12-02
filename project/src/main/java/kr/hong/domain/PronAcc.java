package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PronAcc {
		private int sp_good_acc;
		private int sp_bad_acc;
		private int lip_good_acc;
		private int lip_bad_acc;
}