package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.bo.UserBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.user.UserForm;

public class UserInsertAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;

		UserBO userBO = new UserBO();
		User user = new User();
		user.setUsername(userForm.getUsername());
		user.setPassword(userForm.getPassword());
		user.setAvatar(userForm.getAvatar());
		user.setUniversity(userForm.getUniversity());
		user.setPoint( userForm.getPoint());
//		user.setTypeId(userForm.getTypeId());

		userBO.insertUser(user);

		return mapping.findForward("thanhCong");
	}
}