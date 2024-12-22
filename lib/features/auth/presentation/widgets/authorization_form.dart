import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_event.dart';

class AuthorizationForm extends StatefulWidget {
  const AuthorizationForm({super.key});

  @override
  State<AuthorizationForm> createState() => _AuthorizationFormState();
}

class _AuthorizationFormState extends State<AuthorizationForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 647,
      width: 927,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 86, left: 82),
        child: SizedBox(
          width: 789.59,
          height: 508.24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8),
                width: 661.48,
                height: 29,
                child: Text(
                  textAlign: TextAlign.start,
                  'Please fill in your unique admin login details below',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    height: 1,
                    shadows: [
                      Shadow(
                          offset: const Offset(0, 4),
                          color: Colors.black.withValues(alpha: 0.25),
                          blurRadius: 2),
                    ],
                    fontSize: 24,
                    color: const Color(0xff666666),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 184,
                    height: 32,
                    child: Text(
                      'Email address',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        color: Color(0xff666666),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22.24),
                  SizedBox(
                    width: 751,
                    height: 58,
                    child: TextField(
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        decorationThickness: 0,
                        fontFamily: 'Inter',
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF5F5F5),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffF5F5F5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffF5F5F5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.76),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 184,
                    height: 32,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        color: Color(0xff666666),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22.24),
                  SizedBox(
                    width: 751,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 58,
                          child: TextField(
                            cursorColor: Colors.black,
                            style: const TextStyle(
                              decorationThickness: 0,
                              fontFamily: 'Inter',
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffF5F5F5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF5F5F5),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF5F5F5),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 230.59,
                            height: 32,
                            child: Text(
                              textAlign: TextAlign.end,
                              'forgot password?',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                color: Color(0xff999999),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22.24),
              InkWell(
                onTap: () {
                  context
                      .read<AuthBloc>()
                      .add(const SignInEvent('email', 'password'));
                },
                child: Container(
                    width: 750,
                    height: 73,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                        child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
