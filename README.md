# NumericalAnalysis

2학년 2학기에 진행하였던 수치해석

다양한 수치해석법을 구현해 보았다.

얻어가는 것이 많은 수업이었다.

기말 텀프로젝트는 350번의 6dof 로봇팔의 inverse kinematics연산을 반복수행하여

시간이 적을수록 많은 점수를 받는 과제였다.

나는 동기들과 다르게, loop대신 vectorization을 사용했다.

생각보다 결과가 압도적이지는 않았는데, 아마 캐시 문제때문이라는 생각이 든다.

조금 더 cache frendly한 코드를 작성했으면 정말 빨랐을 듯 싶다. (컴퓨터 구조론은 이 다음학기에 배우게 되었다.)

그렇지만 vectorization을 경험해서 좋았다.

SIMD를 배울 때 좋은 양분이 될 것이다.

별론으로, 4학년이 되어서 inear numerical algebra라는 분야에 관심이 생겼다.

최적의 라이브러리를 만들려면 컴퓨터 구조에 대해서도 빠싹해야할 듯 하다.

캐시, 멀티스레딩, SIMD, 기타 트릭 등등
