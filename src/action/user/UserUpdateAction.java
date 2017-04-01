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

public class UserUpdateAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm userForm = (UserForm) form;

		String userId = request.getParameter("userId");

		UserBO userBO = new UserBO();
		
		User user=new User();
		user.setUserId(userForm.getUserId());
		user.setUsername(userForm.getUsername());
		user.setPassword(userForm.getPassword());
		user.setAvatar(userForm.getAvatar());
		user.setUniversity(userForm.getUniversity());
		user.setPoint(userForm.getPoint());
		user.setTypeId(userForm.getTypeId());

		userBO.updateUser(user);

		return mapping.findForward("thanhCong");
	}
}
