//
//  XYZPerson.h
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#ifndef XYZPerson_h
#define XYZPerson_h

@interface XYZPerson : NSObject

// MARK: - Property
// @property로 선언하게 되면 setter/getter를 만들지 않아도 자동적으로 생성
// getter 메서드는 property 이름으로 호출 가능
// setter 메서드는 property 이름 앞에 set이라는 단어로 시작하여 대문자로 된 속성 이름을 사용
@property NSString * firstName;
@property NSString * lastName;
@property (readonly) NSString * fullName;

// MARK: - Method
- (id) initWithFirstName: (NSString *) aFirstName lastName : (NSString *) aLastNamme;
- (id) initWithFirstName: (NSString *) aFirstName
               lastName : (NSString *) aLastName
            dateOfBirth : (NSDate *) aDOB;
- (id) init;

- (void) sayHello: (NSString *) name;
- (void) saySomething: (NSString *) greet;
- (int) maginNumber;
- (NSString *) magicString: (NSString *) input;

@end // XYZPerson

#endif /* XYZPerson_h */
