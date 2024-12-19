package kjy_prj.admin.login;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.encrypt.Encryptors;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	@Autowired(required = false)
	private LoginDAO lDAO;
	
	public LoginDomain searchAdmin(LoginVO lVO) {
		LoginDomain lDomain = null;
		System.out.println("service: " + lVO);
		
		
		LoginDAO lDAO = LoginDAO.getInstance();
		try {
		//	String key = "sist1234";
		//	String salt = "12345678";
		//	TextEncryptor te = Encryptors.text(key, salt);
			//암호화된 아이디를 복호화
		//	lVO.setAdmin_id(te.decrypt(salt));
		//	System.out.println(lVO.getAdmin_id());
			
		//	lVO.
			lDomain = lDAO.selectAdmin(lVO);
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return lDomain;
	}
	
}
