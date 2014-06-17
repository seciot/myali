.class public Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;
.super Ljava/lang/Object;
.source "HomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;
.implements Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

.field context:Landroid/content/Context;

.field private fragmentContext:Landroid/app/Activity;

.field private hander:Landroid/os/Handler;

.field private headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

.field private homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

.field private mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private mId:Ljava/lang/String;

.field private microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private newUserGuide:Landroid/widget/PopupWindow;

.field private period:J

.field private todoRefreshTimer:Ljava/util/Timer;

.field private widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->period:J

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->hander:Landroid/os/Handler;

    .line 134
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->todoRefreshTimer:Ljava/util/Timer;

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->todoRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/android/phone/home/widget/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/widget/i;-><init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V

    iget-wide v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->period:J

    iget-wide v4, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->period:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 146
    sget-object v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private initContainer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 172
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->setHomeWidgetGroupUiCallback(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;)V

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->setOrientation(I)V

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    .line 181
    new-instance v0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeLayout;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeLayout;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeLayout;->setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->onRefresh()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeLayout;->onRefresh()V

    .line 245
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeLayout;

    invoke-static {}, Lcom/alipay/android/phone/home/ui/HomeLayout;->a()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 164
    :cond_2
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 195
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->b:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 200
    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    iget-object v3, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->a:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    if-nez v0, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->initContainer()V

    .line 221
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidget;

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidget;->getView()Landroid/view/View;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 284
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 288
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    .line 290
    const/4 v0, 0x1

    .line 293
    :cond_0
    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->refreshData()V

    .line 250
    sget-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->showGuide()V

    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Z

    .line 254
    :cond_0
    return-void
.end method

.method public onReturn()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->refreshData()V

    .line 259
    return-void
.end method

.method public setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 299
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    .line 270
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 264
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    .line 265
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mId:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public showGuide()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->hander:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/widget/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/widget/g;-><init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected showGuideOnUiThread()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->headerAreaLayout:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 92
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 93
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    .line 94
    if-gtz v1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$dimen;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$dimen;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v2, v1

    move v1, v0

    .line 101
    :goto_1
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->m:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    iget-object v4, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/android/phone/openplatform/R$dimen;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 108
    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 112
    new-instance v0, Lcom/alipay/android/phone/home/widget/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/h;-><init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v3, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->newUserGuide:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_2
    move v2, v1

    move v1, v0

    goto :goto_1
.end method
