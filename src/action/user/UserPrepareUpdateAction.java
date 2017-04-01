package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.bo.TypeBO;
import model.bo.UserBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.user.UserForm;

public class UserPrepareUpdateAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;
		
		String userId=request.getParameter("userId");

		UserBO userBO=new UserBO();
		
		User user=userBO.getOneUserById(userId);
		
		userForm.setUserId(user.getUserId());
		userForm.setUsername(user.getUsername());
		userForm.setPassword(user.getPassword());
		userForm.setAvatar(user.getAvatar());
		userForm.setUniversity(user.getUniversity());
		userForm.setPoint(user.getPoint());
		userForm.setTypeId(user.getTypeId());
	
		TypeBO typeBO=new TypeBO();
		userForm.setTypeList(typeBO.getAllType());
		

		return mapping.findForward("thanhCong");
	}

}
