package action.status;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.StatusBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.status.StatusForm;

public class StatusDeleteAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		StatusForm statusForm = (StatusForm) form;

		String statusId = request.getParameter("statusId");

		StatusBO statusBO = new StatusBO();

		statusBO.deleteStatus(Integer.parseInt(statusId));

		return mapping.findForward("thanhCong");
	}

}
