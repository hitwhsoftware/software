package soft.room.control;

import java.util.List;

import soft.room.dao.ClassroomDAO;
import soft.room.dao.ClassroomstatusDAO;
import soft.room.model.Classroom;
import soft.room.model.Classroomstatus;

public class ClassroomControl {
	/*
	 * ClassroomControlΨһʵ��
	 */
	private static ClassroomControl classroomControl = null;
	public static ClassroomControl getClassroomControl(){
		if(null == classroomControl)
		{
			classroomControl = new ClassroomControl();
		}
		return classroomControl;
	}
	
	private ClassroomDAO classroomDao       = null;
	private ClassroomstatusDAO classroomStatusDao = null;
	private ClassroomControl(){
		classroomDao       = new ClassroomDAO();
		classroomStatusDao = new ClassroomstatusDAO();
	}
	
	/*
	 * ������Ϣ�Ǽ�
	 */
	public void saveClassroom(String classroomId, String classroomStatusId){
		Classroom classroom = new Classroom(classroomId,classroomStatusId);
		classroomDao.save(classroom);
	}
	
	/*
	 * ����״̬�Ǽ�
	 */
	public void saveClassroomStatus(String classroomStatusId, String classroomStatus){
		Classroomstatus classroomStatu = new Classroomstatus(classroomStatusId,classroomStatus);
		classroomStatusDao.save(classroomStatu);
	}
	
	/*
	 * ��ʾ����״̬��Ϣ
	 */
	public List getClassroomStatus(){
		List list = classroomStatusDao.findAll();
		if(list.size() < 1)
		{
			return null;
		}
		else
		{
			return list;
		}
		
	}
	
	/*
	 * ��ʾ���ұ����Ϣ
	 */
	public List getClassroomId(){
		List list = classroomDao.findAll();
		if(list.size() < 1)
		{
			return null;
		}
		else
		{
			return list;
		}
	}

}
