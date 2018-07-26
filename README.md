# JJNotify
通过runtime自定义通知取代系统通知，从而省去通知在dealloc中的注销步骤

举例说明：
```
//发送通知
[JJNotify notify:@"SecondPage" info:nil];

```

```
//监听通知
[JJNotify registerNotify:@"SecondPage" instance:self block:^(id  _Nullable info) {
__weak __typeof(self) wSelf = self;
__strong __typeof(wSelf) sSelf = wSelf;
sSelf.view.backgroundColor = [UIColor blueColor];
}];

```
