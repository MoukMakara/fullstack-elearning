import logo from "./logo.svg";
import "./App.css";
import { BrowserRouter, Routes, Route, HashRouter } from "react-router-dom";
import HomePage from "./page/home/HomePage";
import AboutPage from "./page/about/AboutPage";
import StudentPage from "./page/student/StudentPage";
import MainLayout from "./component/layout/MainLayout";
import MainLayoutLogin from "./component/layout/MainLayoutLogin";
import LoginPage from "./page/auth/LoginPage";
import RegisterPage from "./page/auth/RegisterPage";
import MainLayoutAdmin from "./component/layout/MainLayoutAdmin";
import AdminHomePage from "./page-admin/home/AdminHomePage";
import AdminTeacherPage from "./page-admin/teacher/AdminTeacherPage";
import AdminStudentPage from "./page-admin/student/AdminStudentPage";
import AdminCoursePage from "./page-admin/course/AdminCoursePage";
import AdminCourseCategoryPage from "./page-admin/course/AdminCourseCategoryPage";
import AdminUserPage from "./page-admin/user/AdminUserPage";
import AdminRolePage from "./page-admin/user/AdminRolePage";
import AdminClassroomPage from "./page-admin/classroom/AdminClassroomPage";
import AdmineEnrollStudent from "./page-admin/student/AdmineEnrollStudent";
import CoursePage from "./page/course/CoursePage";
import TeacherPage from "./page/teacher/TeacherPage";
import CoursePageDetails from "./page/course-details/CoursePageDetails";
function App() {
  const publicPath = "/nitkh/";
  const routeCodes = {
    home: publicPath,
    about: `${publicPath}about`,
    student: `${publicPath}student`,
    notfound: `${publicPath}*`,
  };
  const publicPathAdmin = `${publicPath}admin/`;
  const routAdmin = {
    home: publicPathAdmin,
    enroll: `${publicPath}enroll`,
    classroom: `${publicPath}classroom`,
  };

  return (
    <BrowserRouter basename="/">
      <Routes>
        <Route element={<MainLayout />}>
          <Route path="/" element={<HomePage />} />
          <Route path="/about" element={<AboutPage />} />
          <Route path="/student" element={<StudentPage />} />
          <Route path="/teacher" element={<TeacherPage />} />
          <Route path="/course" element={<CoursePage />} />
          <Route path="/course/:id" element={<CoursePageDetails />} />
          <Route path="*" element={<h1>Route Not Found!</h1>} />
        </Route>
        <Route element={<MainLayoutAdmin />}>
          <Route path="/admin" element={<AdminHomePage />} />
          <Route path="/admin/enroll" element={<AdmineEnrollStudent />} />
          <Route path="/admin/classroom" element={<AdminClassroomPage />} />
          <Route path="/admin/teacher" element={<AdminTeacherPage />} />
          <Route path="/admin/student" element={<AdminStudentPage />} />
          <Route path="/admin/course" element={<AdminCoursePage />} />
          <Route
            path="/admin/course_category"
            element={<AdminCourseCategoryPage />}
          />
          <Route path="/admin/user" element={<AdminUserPage />} />
          <Route path="/admin/role" element={<AdminRolePage />} />
        </Route>
        <Route element={<MainLayoutLogin />}>
          <Route path="/login" element={<LoginPage />} />
          <Route path="/register" element={<RegisterPage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
