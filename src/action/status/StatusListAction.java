package action.status;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Status;
import model.bo.StatusBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.status.StatusForm;


public class StatusListAction extends Action {


	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
				StatusForm statusForm = (StatusForm)form;
				
				StatusBO statusBO = new StatusBO();
				
				ArrayList<Status> statusList=statusBO.getAllStatus();
				
				statusForm.setStatusList(statusList);
				
		return mapping.findForward("thanhCong");
	}
}
