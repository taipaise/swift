<img src = "https://user-images.githubusercontent.com/83569908/219932162-3b5ad326-12b1-469b-a24e-ec6346bd38a8.gif" width=“20%” height=“20%”>

### UI 구현 : 스토리 보드

설명
- 텍스트 델리게이트 패턴에 대해 학습
- textFieldShouldBeginEditing : 텍스트필드에 입력을 허용할 지 결정
- textFieldDidBeginEditing : 텍스트 필드 입력이 시작될 때 호출됨
- textFieldShouldClear  : 텍스트 필드의 텍스트를 한번에 지우는 clear를 허용할 지 결정
- textField(_:shouldChangeCharactersIn:replacementString:) : 텍스트 필드에 글자가 입력/지워질 때마다 호출
- textFieldShouldReturn : 텍스트 필드의 return을 허용할 지 결정
- textFieldShouldEndEditing : 텍스트 필드의 입력을 끝낼지 말지 결정
- textFieldDidEndEditing : 텍스트 필드의 입력이 완전히 끝났을 때 호출
- touchesBegan : 키보드 밖의 영역을 누르면 키보드가 내려감
