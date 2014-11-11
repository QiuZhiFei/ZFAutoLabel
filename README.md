ZFAutoLabel
===========
对 label 文字展示的一些扩展，包括 字间距、行间距，同时可以像控制 attributedText 控制其他的属性

效果
===========
zfLabel 展示 

![](http://zhifei.qiniudn.com/zf_auto_label_1.png)

范例
===========
```
    label = [[ZFAutoLabel alloc]
                                 initWithFrame:CGRectMake(0, 100, 300, 400)];
    label.backgroundColor = [UIColor yellowColor];
    label.linesSpacing = 20;
    label.characterSpacing = 10;
    label.font = [UIFont boldSystemFontOfSize:15];
    label.text = @"我只是作为一个demo里的语句才会出现的，我这里不表达任何意思，什么都不想表达，真的不想表达";
    [self.view addSubview:label];
    
    // 动态高度
    [label autoSizeToFit];
    
    // 文字扩展
    [label addAttribute:(id)kCTForegroundColorAttributeName
                  value:[UIColor blueColor]
                  range:NSMakeRange(30, 10)];
                  
```

## 作者
* 仇志飞 ([@zhifei](http://weibo.com/718001205))
