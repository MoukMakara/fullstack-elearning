import React, { useEffect, useState } from "react";
import { request } from "../../util/request";
import { FaUserGraduate, FaChalkboardTeacher, FaUser } from "react-icons/fa";
import { MdCategory } from "react-icons/md";
import { GiTeacher } from "react-icons/gi";
import { PiStudentBold } from "react-icons/pi";
import { RiAdminFill } from "react-icons/ri";
import { TiUserAdd } from "react-icons/ti";
import "flowbite";

function AdminHomePage() {
  const [course, setCourse] = useState([]); // list
  const [category, setCategory] = useState([]);
  const [classroom, setClassroom] = useState([]);
  const [teacher, setTeacher] = useState([]);
  const [student, setStudent] = useState([]);
  const [student_register, setStudent_register] = useState([]);
  const [user, setUser] = useState([]);
  const [role, setRole] = useState([]);
  useEffect(() => {
    getCourse();
    getCategory();
    getClassroom();
    getTeacher();
    getStudent();
    getUser();
    getRole();
    getStudent_register();
  }, []);
  const getCourse = async () => {
    const res = await request("course", "get");
    if (res) {
      // console.log("course", res);
      setCourse(res.list);
    }
  };
  const getCategory = async () => {
    const res = await request("category", "get");
    if (res) {
      // console.log("category: ", res);
      setCategory(res.list);
    }
  };
  const getClassroom = async () => {
    const res = await request("classroom", "get");
    if (res) {
      // console.log("classroom: ", res);
      setClassroom(res.list);
    }
  };
  const getTeacher = async () => {
    const res = await request("teacher", "get");
    if (res) {
      console.log("teacher: ", res);
      setTeacher(res.totalRecords);
    }
  };
  const getStudent = async () => {
    const res = await request("student", "get");
    if (res) {
      console.log("student: ", res);
      setStudent(res.list);
    }
  };
  const getStudent_register = async () => {
    const res = await request("student_register", "get");
    if (res) {
      // console.log("student_register: ", res);
      setStudent_register(res.list);
    }
  };
  const getUser = async () => {
    const res = await request("users", "get");
    if (res) {
      // console.log("user: ", res);
      setUser(res.list);
    }
  };
  const getRole = async () => {
    const res = await request("role", "get");
    if (res) {
      // console.log("role: ", res);
      setRole(res.list);
    }
  };
  return (
    <div className="flex justify-center items-center ">
      {/* grid 4 start */}
      <div className="grid w-full xl:grid-cols-4 lg:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-4 mb-3 mt-2">
        {/* card 1 */}
        <div className="max-w-full h-44 rounded-lg bg-violet-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{course?.length}</h2>
            <div className="h-10">
              <FaUserGraduate className="w-14 h-14 rounded-2xl bg-violet-200 p-2 fill-violet-400 stroke-violet-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total Course</h2>
          </div>
        </div>
        {/* card 1 end */}
        {/* card 2 */}
        <div className="max-w-full h-44 rounded-lg bg-amber-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{category?.length}</h2>
            <div className="h-10">
              <MdCategory className="w-14 h-14 rounded-2xl bg-amber-200 p-2 fill-amber-400 stroke-amber-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total Category</h2>
          </div>
        </div>
        {/* card 2 end */}
        {/* card 3 */}
        <div className="max-w-full h-44 rounded-lg bg-green-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{classroom?.length}</h2>
            <div className="h-10">
              <GiTeacher className="w-14 h-14 rounded-2xl bg-green-200 p-2 fill-green-400 stroke-green-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total Classroom</h2>
          </div>
        </div>
        {/* card 3 end */}
        {/* card 4 */}
        <div className="max-w-full h-44 rounded-lg bg-orange-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{teacher}</h2>
            <div className="h-10">
              <FaChalkboardTeacher className="w-14 h-14 rounded-2xl bg-orange-200 p-2 fill-orange-400 stroke-orange-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total Teacher</h2>
          </div>
        </div>
        {/* card 4 end */}
        {/* card 5 */}
        <div className="max-w-full h-44 rounded-lg bg-teal-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{student?.length}</h2>
            <div className="h-10">
              <PiStudentBold className="w-14 h-14 rounded-2xl bg-teal-200 p-2 fill-teal-400 stroke-teal-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total Student</h2>
          </div>
        </div>
        {/* card 5 end */}
        {/* card 6 */}
        <div className="max-w-full h-44 rounded-lg bg-cyan-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">
              {student_register?.length}
            </h2>
            <div className="h-10">
              <TiUserAdd className="w-14 h-14 rounded-2xl bg-cyan-200 p-2 fill-cyan-400 stroke-cyan-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">
              Total student Register Course
            </h2>
          </div>
        </div>
        {/* card 6 end */}
        {/* card 7 */}
        <div className="max-w-full h-44 rounded-lg bg-blue-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{user?.length}</h2>
            <div className="h-10">
              <FaUser className="w-14 h-14 rounded-2xl bg-blue-200 p-2 fill-blue-400 stroke-blue-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total User</h2>
          </div>
        </div>
        {/* card 7 end */}
        {/* card 8 */}
        <div className="max-w-full h-44 rounded-lg bg-rose-100 p-6">
          <div className=" flex justify-between items-center mb-3">
            <h2 className="text-4xl mt-2 font-bold">{role?.length}</h2>
            <div className="h-10">
              <RiAdminFill className="w-14 h-14 rounded-2xl bg-rose-200 p-2 fill-rose-400 stroke-rose-400" />
            </div>
          </div>
          <div>
            <h2 className="text-xl mt-6 font-bold">Total Role</h2>
          </div>
        </div>
        {/* card 8 end */}
      </div>
    </div>
  );
}

export default AdminHomePage;
