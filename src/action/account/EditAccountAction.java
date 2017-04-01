package action.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.HomeForm;
import model.bean.User;
import model.bo.UserBO;

public class EditAccountAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HomeForm homeForm = (HomeForm) form;
		UserBO userBO = new UserBO();
	 
		User user = new User();
		user.setUserId(Integer.parseInt(homeForm.getUserId()));
		user.setPassword(homeForm.getPassword());
		user.setUsername(homeForm.getUsername());
		user.setPoint(Float.parseFloat(homeForm.getPoint()));
		user.setUniversity(homeForm.getUniversity());
 
		userBO.updateUser(user);
 

		return mapping.findForward("thanhCong");
	}

}
