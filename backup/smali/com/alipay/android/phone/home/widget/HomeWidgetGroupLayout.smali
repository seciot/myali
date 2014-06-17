.class public Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
.super Landroid/widget/LinearLayout;
.source "HomeWidgetGroupLayout.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EViewGroup;
.end annotation


# static fields
.field public static a:Z

.field public static b:I


# instance fields
.field private c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Z

    .line 25
    const/16 v0, 0x8

    sput v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Landroid/os/Handler;

    .line 26
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->e:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Landroid/os/Handler;

    .line 26
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->e:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Landroid/os/Handler;

    .line 26
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->e:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 107
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 51
    if-nez p2, :cond_0

    sget-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    invoke-interface {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;->showGuide()V

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Z

    .line 55
    sput p2, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->b:I

    .line 57
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->processShowGuide()V

    .line 68
    :cond_0
    return-void
.end method

.method protected processShowGuide()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayHomeGuideFlag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->e:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->e:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->showGuideView()V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setHomeWidgetGroupUiCallback(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    .line 45
    return-void
.end method

.method protected showGuideView()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Z

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    invoke-interface {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;->showGuide()V

    goto :goto_0
.end method
