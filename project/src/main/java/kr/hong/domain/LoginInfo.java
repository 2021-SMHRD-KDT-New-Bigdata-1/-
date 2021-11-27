package kr.hong.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginInfo {
		private String login_user_id;
		private String login_user_pw;
		private String user_name;
		private String user_birthdate;
		private String user_nationality;
}