import "./HomePage1.css";
import { useState, useEffect } from "react";
import coding from "../../assests/image/coding2.png";
import tailwindcss from "../../assests/image/tailwindcss.svg";
import html from "../../assests/image/html-1.svg";
import css from "../../assests/image/css-3.svg";
import javascript from "../../assests/image/javascript-1.svg";
import react from "../../assests/image/react-2.svg";
import next from "../../assests/image/next-js.svg";
import { CgWebsite } from "react-icons/cg";
import { FaCode } from "react-icons/fa";
import { FaFileCode } from "react-icons/fa";
import { FaDatabase } from "react-icons/fa";
import { MdDesignServices } from "react-icons/md";
import { SiPostman } from "react-icons/si";

import "flowbite";

const HomePage = () => {
  return (
    <section class="bg-white dark:bg-gray-900">
      <div class="grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
        <div class="mr-auto place-self-center lg:col-span-7">
          <h1 class="max-w-2xl mb-4 text-blue-700 text-4xl font-extrabold tracking-tight leading-none md:text-5xl xl:text-6xl dark:text-white">
            E-Learning At Your Home
          </h1>
          <p class="max-w-2xl mb-6 font-light text-gray-500 lg:mb-8 md:text-lg lg:text-xl dark:text-gray-400">
            E-learning methods and technology are important both for educating
            students and for the professional development of employees in the
            workforce.
          </p>
        </div>
        <div class="hidden lg:mt-0 lg:col-span-5 lg:flex">
          <img src={coding} alt="mockup" />
        </div>
      </div>
      {/* Storefront Hero Sections */}
      <div class="mx-auto mb-8 grid max-w-screen-xl grid-cols-2 gap-8 text-gray-500 dark:text-gray-400 sm:grid-cols-3 sm:gap-12 lg:grid-cols-6 px-4">
        <a href="#" class="flex items-center md:justify-center">
          <img
            src={html}
            class="h-10 hover:text-gray-900 dark:hover:text-white"
          />
        </a>
        <a href="#" class="flex items-center md:justify-center">
          <img
            src={css}
            class="h-10 hover:text-gray-900 dark:hover:text-white"
          />
        </a>
        <a href="#" class="flex items-center md:justify-center">
          <img
            src={javascript}
            class="h-10 hover:text-gray-900 dark:hover:text-white"
          />
        </a>
        <a href="#" class="flex items-center md:justify-center">
          <img
            src={react}
            class="h-10 hover:text-gray-900 dark:hover:text-white"
          />
        </a>
        <a href="#" class="flex items-center md:justify-center">
          <img
            src={tailwindcss}
            class="h-10 hover:text-gray-900 dark:hover:text-white"
          />
        </a>
        <a href="#" class="flex items-center md:justify-center">
          <img
            src={next}
            class="h-10 hover:text-gray-900 dark:hover:text-white"
          />
        </a>
      </div>
      {/* feature section */}
      <section class="bg-white dark:bg-gray-900">
        <div class="py-8 px-4 mx-auto max-w-screen-xl sm:py-16 lg:px-6">
          <div class="max-w-screen-md mb-8 lg:mb-16">
            <h2 class="mb-4 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">
              Learning Programming Language With Me
            </h2>
            <p class="text-gray-500 sm:text-xl dark:text-gray-400">
              Full stack development is the process of developing both the
              frontend and backend of applications. Any application has a
              frontend (user-facing) component and a backend (database and
              logic) component. The frontend contains the user interface and
              code related to user interactions with the application.
            </p>
          </div>
          <div class="space-y-8 md:grid md:grid-cols-2 lg:grid-cols-3 md:gap-12 md:space-y-0">
            <div>
              <div class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900">
                <FaCode class="w-5 h-5 text-primary-600 lg:w-6 lg:h-6 dark:text-primary-300" />
              </div>
              <h3 class="mb-2 text-xl font-bold dark:text-white">
                Programming
              </h3>
              <p class="text-gray-500 dark:text-gray-400">
                Programming refers to a technological process for telling a
                computer which tasks to perform in order to solve problems. You
                can think of programming as a collaboration between humans and
                computers, in which humans create instructions for a computer to
                follow (code) in a language computers can understand.
              </p>
            </div>
            <div>
              <div class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900">
                <CgWebsite class="w-5 h-5 text-primary-600 lg:w-6 lg:h-6 dark:text-primary-300" />
              </div>
              <h3 class="mb-2 text-xl font-bold dark:text-white">
                Web Development
              </h3>
              <p class="text-gray-500 dark:text-gray-400">
                Web development is the process of building, programming, and
                maintaining websites and web applications. Website developers
                use various programming languages, like HTML, CSS, and
                JavaScript, to develop websites and web applications.
              </p>
            </div>
            <div>
              <div class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900">
                <FaFileCode class="w-5 h-5 text-primary-600 lg:w-6 lg:h-6 dark:text-primary-300" />
              </div>
              <h3 class="mb-2 text-xl font-bold dark:text-white">Mobile App</h3>
              <p class="text-gray-500 dark:text-gray-400">
                A mobile application or app is a computer program or software
                application designed to run on a mobile device such as a phone,
                tablet, or watch.
              </p>
            </div>
            <div>
              <div class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900">
                <FaDatabase class="w-5 h-5 text-primary-600 lg:w-6 lg:h-6 dark:text-primary-300" />
              </div>
              <h3 class="mb-2 text-xl font-bold dark:text-white">Database</h3>
              <p class="text-gray-500 dark:text-gray-400">
                A database is an organized collection of structured information,
                or data, typically stored electronically in a computer system. A
                database is usually controlled by a database management system
                (DBMS).
              </p>
            </div>
            <div>
              <div class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900">
                <MdDesignServices class="w-5 h-5 text-primary-600 lg:w-6 lg:h-6 dark:text-primary-300" />
              </div>
              <h3 class="mb-2 text-xl font-bold dark:text-white">UX/UI</h3>
              <p class="text-gray-500 dark:text-gray-400">
                UI (User Interface) is all about the look and feel of a product
                or service. It's the visual language that users interact with,
                and it should be both aesthetically pleasing and easy to use. UX
                (User Experience) is the broader concept of how a user feels
                when interacting with a product or service.
              </p>
            </div>
            <div>
              <div class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900">
                <SiPostman class="w-5 h-5 text-primary-600 lg:w-6 lg:h-6 dark:text-primary-300" />
              </div>
              <h3 class="mb-2 text-xl font-bold dark:text-white">API</h3>
              <p class="text-gray-500 dark:text-gray-400">
                API stands for Application Programming Interface. In the context
                of APIs, the word Application refers to any software with a
                distinct function. Interface can be thought of as a contract of
                service between two applications. This contract defines how the
                two communicate with each other using requests and responses.
              </p>
            </div>
          </div>
        </div>
      </section>
      {/* footer */}

      <footer class="bg-white dark:bg-gray-900">
        <div class="mx-auto w-full max-w-screen-xl">
          <div class="grid grid-cols-2 gap-8 px-4 py-6 lg:py-8 md:grid-cols-4">
            <div>
              <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">
                Company
              </h2>
              <ul class="text-gray-500 dark:text-gray-400 font-medium">
                <li class="mb-4">
                  <a href="#" class=" hover:underline">
                    About
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Careers
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Brand Center
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Blog
                  </a>
                </li>
              </ul>
            </div>
            <div>
              <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">
                Help center
              </h2>
              <ul class="text-gray-500 dark:text-gray-400 font-medium">
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Discord Server
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Twitter
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Facebook
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Contact Us
                  </a>
                </li>
              </ul>
            </div>
            <div>
              <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">
                Legal
              </h2>
              <ul class="text-gray-500 dark:text-gray-400 font-medium">
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Privacy Policy
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Licensing
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Terms &amp; Conditions
                  </a>
                </li>
              </ul>
            </div>
            <div>
              <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">
                Download
              </h2>
              <ul class="text-gray-500 dark:text-gray-400 font-medium">
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    iOS
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Android
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    Windows
                  </a>
                </li>
                <li class="mb-4">
                  <a href="#" class="hover:underline">
                    MacOS
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </section>
  );
};

export default HomePage;
