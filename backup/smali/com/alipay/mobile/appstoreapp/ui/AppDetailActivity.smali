.class public Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "AppDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

.field private c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private g:Z

.field private h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private i:Lcom/alipay/mobile/commonui/widget/APButton;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private l:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private m:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private n:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private o:Landroid/os/Handler;

.field private p:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->g:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->o:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/util/AppStoreUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->iconHasLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->d:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 209
    :goto_1
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/a;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->c:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->j:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->i:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 228
    const-string/jumbo v0, "sub_button_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->subsub_btn_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->sub_button_sub:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundResource(I)V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->main_button_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->main_button:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 391
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->addToFastLogin(Ljava/lang/String;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->d:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 398
    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/appstoreapp/ui/f;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/f;->start()V

    .line 451
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->k:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 425
    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/h;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/appstoreapp/ui/h;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/h;->start()V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 449
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->b()V

    .line 384
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v0, Lcom/alipay/mobile/openplatform/R$layout;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    const-string/jumbo v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->p:Landroid/os/Bundle;

    const-string/jumbo v1, "TARGET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    new-instance v0, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->b:Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->finish()V

    .line 80
    :cond_2
    :goto_0
    return-void

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->b:Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;->a(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-nez v0, :cond_4

    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/j;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/appstoreapp/ui/j;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->d:Ljava/lang/String;

    const-string/jumbo v1, "UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 459
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 216
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->g:Z

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->g:Z

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 277
    if-nez p2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_6

    .line 282
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 283
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstallBySystem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/c;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/d;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->c:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->j:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/e;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 289
    :cond_6
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_0

    .line 290
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 291
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto/16 :goto_0
.end method
