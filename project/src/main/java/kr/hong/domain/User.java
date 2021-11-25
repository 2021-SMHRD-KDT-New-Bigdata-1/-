package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
		private String user_id;
		private String user_pw;
		private String user_name;
		private String user_birthdate;
		private String user_nationality;
		private String user_joindate;
		private String admin_yn;
		private String user_status;
		
}
