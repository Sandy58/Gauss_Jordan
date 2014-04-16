Gauss_Jordan
============

This repository is about the use of Gauss Jordan, this algorithm resolved an array where the number of rows is greater
than the number of columns, for example:
                                         __        __
                                        | 2  1 -1  8 |
                                        |-3 -1  2 -11|
                                        |-2  1  2 -3 |
                                        |__        __|

The algorithm first take the data written to get the size of array, if the number of rows is less than the number of
columns as result is obtained an error message, but if the size is correct the algorithm take the number which is in 
the first position of the first row and column and divide all the row by the number to obtain a 1, for example:
                           __        __          __            __
                          | 2  1 -1  8 |        | 1  0.5 -0.5  4 |
                          |-3 -1  2 -11|  ---\  |-3  -1    2  -11|
                          |-2  1  2 -3 |  ---/  |-2   1    2  -3 |
                          |__        __|        |__            __|

The next step is convert all the column in which we are positioned in zero except the number that was became in one.
First take the first number to convert in zero, for get the zero in the column is get the contrary number of the 
number to convert, this step is repeated until all the column is converted.
For example: 
                           __        __          __            __
                          | 2  1 -1  8 |        | 1  0.5 -0.5  4 |
                          |-3 -1  2 -11|  ---\  | 0  0.5  0.5  1 |
                          |-2  1  2 -3 |  ---/  | 0   2    1   5 |
                          |__        __|        |__            __|

This algorithm is repeated  in all array, change the position adding one in the position for get the one and take the
column of the position for get the zero. The result of the matrix would be as follows:
                                         __        __
                                        | 1  0  0  2 |
                                        | 0  1  0  3 |
                                        | 0  0  1 -1 |
                                        |__        __|
                                        
For the use of this algorithm in erlang you must position yourself in the folder "Gauss_Jordan" in the console with:
            $ cd Gauss_Jordan
There are three different commands for the use of gauss jordan:
            make compile --> Compile all records of the folder "src" of Gauss Jordan and get all records .beam in the 
                             folder "ebin".
            make start   --> Execute the compiler of erlang.
            make clear   --> Delete all records .beam of the folder "ebin".

A Example of use:
  * In this part sample the use of make compile.
   
      host2:Gauss_Jordan Sandy$ make compile
      erlc -I include/ -o ebin/ change.erl
      erlc -I include/ -o ebin/ convert_list.erl
      erlc -I include/ -o ebin/ delete.erl
      erlc -I include/ -o ebin/ get_size.erl
      erlc -I include/ -o ebin/ main.erl
      erlc -I include/ -o ebin/ sizes.erl
      host2:Gauss_Jordan Sandy$ 
    In the folder ebin, the records .beam is get.
      host2:ebin Sandy$ls
      change.beam	delete.beam	main.beam
      convert_list.beam	get_size.beam	sizes.beam
   
  * In this part sample the use of make start and the insert an array.
      host2:Gauss_Jordan Sandy$ make start
      erl -pa ebin/
      Erlang R15B01 (erts-5.9.1) [source] [64-bit] [smp:4:4] [async-threads:0] [kernel-poll:false]

      Eshell V5.9.1  (abort with ^G)
      1> main:fun1([[2,1,-1,8],[-3,-1,2,-11],[-2,1,2,-3]]).
      [[1.0,0.0,0.0,2.0],[0.0,1.0,0.0,3.0],[0.0,0.0,1.0,-1.0]]
      
   * In this part sample the use of make clear and with the use of "ls" sample that the records were deleted.
      ost2:Gauss_Jordan Sandy$ make clear
      rm -rf ebin/*.beam
      host2:Gauss_Jordan Sandy$
      
      host2:ebin Sandy$ ls
      host2:ebin Sandy$ 
   
