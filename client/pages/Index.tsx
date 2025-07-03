import React from "react";

export default function Index() {
  return (
    <div className="min-h-screen bg-yellow-primary font-['Barlow_Semi_Condensed'] flex flex-col">
      {/* Header Section */}
      <div className="flex-1 px-5 pt-5 pb-0">
        {/* Back Button */}
        <button className="w-[45px] h-[45px] rounded-full bg-coral flex items-center justify-center mb-8">
          <svg
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M15 18L9 12L15 6"
              stroke="white"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
            />
          </svg>
        </button>

        {/* Title */}
        <h1 className="text-brown-primary text-[40px] font-bold leading-none tracking-[2px] mb-4 max-w-[291px]">
          Log in
        </h1>

        {/* Subtitle */}
        <p className="text-brown-secondary text-base font-medium leading-none tracking-[0.8px] max-w-[291px] mb-8">
          Hello! A safe and fun space for every child's development.
        </p>
      </div>

      {/* Login Form Card */}
      <div className="bg-white rounded-t-[60px] shadow-[0px_0px_6px_0px_rgba(0,0,0,0.25)] px-8 pt-[72px] pb-8 flex-shrink-0 min-h-[655px]">
        <div className="max-w-[327px] mx-auto">
          {/* Username Input */}
          <div className="relative mb-5">
            <div className="w-full h-[59px] bg-cream rounded-full flex items-center px-7">
              <span className="text-brown-tertiary text-xl font-bold tracking-[1px]">
                Username
              </span>
            </div>
          </div>

          {/* Password Input */}
          <div className="relative mb-3">
            <div className="w-full h-[59px] bg-cream rounded-full flex items-center px-7">
              <span className="text-brown-tertiary text-xl font-bold tracking-[1px]">
                Password
              </span>
            </div>
          </div>

          {/* Forgot Password Link */}
          <div className="text-right mb-8">
            <button className="text-brown-light text-sm font-bold tracking-[0.7px]">
              Forget Password?
            </button>
          </div>

          {/* Login Button */}
          <button className="w-full h-[59px] bg-brown-primary rounded-full flex items-center justify-center mb-8">
            <span className="text-cream text-[29px] font-extrabold tracking-[1.45px]">
              Log in
            </span>
          </button>

          {/* Divider */}
          <div className="flex items-center justify-center mb-8">
            <div className="flex-1 h-[1px] bg-brown-tertiary max-w-[113px]"></div>
            <span className="px-4 text-brown-tertiary text-base font-bold tracking-[0.8px]">
              or
            </span>
            <div className="flex-1 h-[1px] bg-brown-tertiary max-w-[113px]"></div>
          </div>

          {/* Social Login Buttons */}
          <div className="space-y-4">
            {/* Google Button */}
            <button className="w-full h-[59px] bg-yellow-secondary rounded-full flex items-center justify-center relative">
              <div className="absolute left-4 w-[38px] h-[38px] bg-white rounded-full flex items-center justify-center">
                <svg
                  width="27"
                  height="28"
                  viewBox="0 0 27 28"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M1.463 7.57625C2.60752 5.29861 4.36263 3.38395 6.53235 2.04609C8.70207 0.708225 11.201 -0.00017392 13.75 3.20284e-08C17.4556 3.20284e-08 20.5686 1.36263 22.9488 3.58188L19.0066 7.52537C17.5808 6.16275 15.7685 5.46838 13.75 5.46838C10.1681 5.46838 7.13625 7.88838 6.05688 11.1375C5.78188 11.9625 5.62513 12.8425 5.62513 13.75C5.62513 14.6575 5.78188 15.5375 6.05688 16.3625C7.13763 19.613 10.1681 22.0316 13.75 22.0316C15.5994 22.0316 17.1737 21.5435 18.4058 20.7185C19.12 20.2483 19.7314 19.6381 20.2032 18.9248C20.6749 18.2116 20.9971 17.4101 21.1503 16.5688H13.75V11.2502H26.6997C26.862 12.1495 26.95 13.0873 26.95 14.0621C26.95 18.2504 25.4513 21.7759 22.8498 24.1684C20.5755 26.2694 17.4625 27.5 13.75 27.5C11.9441 27.5007 10.1558 27.1456 8.48725 26.4548C6.8187 25.7641 5.30262 24.7513 4.02567 23.4743C2.74872 22.1974 1.73593 20.6813 1.04519 19.0128C0.354439 17.3442 -0.000721684 15.5559 1.10098e-06 13.75C1.10098e-06 11.5308 0.530751 9.4325 1.463 7.57625Z"
                    fill="#FED371"
                  />
                </svg>
              </div>
              <span className="text-white text-xl font-bold tracking-[1px] ml-6">
                Continue with Google
              </span>
            </button>

            {/* Facebook Button */}
            <button className="w-full h-[59px] bg-yellow-primary rounded-full flex items-center justify-center relative">
              <div className="absolute left-4 w-[38px] h-[38px] bg-white rounded-full flex items-center justify-center">
                <svg
                  width="20"
                  height="20"
                  viewBox="0 0 40 40"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M40 20.0501C40 8.98245 31.04 0 20 0C8.96 0 0 8.98245 0 20.0501C0 29.7544 6.88 37.8346 16 39.6992V26.0652H12V20.0501H16V15.0376C16 11.1679 19.14 8.02005 23 8.02005H28V14.0351H24C22.9 14.0351 22 14.9373 22 16.0401V20.0501H28V26.0652H22V40C32.1 38.9975 40 30.4561 40 20.0501Z"
                    fill="#3b5998"
                  />
                </svg>
              </div>
              <span className="text-white text-xl font-bold tracking-[1px] ml-6">
                Continue with Facebook
              </span>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
