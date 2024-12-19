package kjy_prj.admin.login;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.encrypt.Encryptors;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	@Autowired(required = false)
	private LoginDAO lDAO;
	
	public LoginDomain searchAdmin(LoginVO lVO) {
		LoginDomain lDomain = null;
		System.out.println("service: " + lVO);
		
		LoginDAO lDAO = LoginDAO.getInstance();
		//객체 생성
		PasswordEncoder pe = new BCryptPasswordEncoder();
		try {
			//일방향 해시
			lVO.setPassword(pe.encode(lVO.getPassword()));
			
			//암호화 객체 얻기
			String key = "sist1234";
			String salt = "4921328295";
			TextEncryptor te = Encryptors.text(key, salt);
			//아이디 암호화
			lVO.setAdmin_id(te.decrypt(lVO.getAdmin_id()));
			System.out.println(lVO.getAdmin_id());
			
			lVO.setPassword(salt);
			lDomain = lDAO.selectAdmin(lVO);
		} catch(PersistenceException p) {
			p.printStackTrace();
		}//end catch
		
		return lDomain;
	}
	
}
