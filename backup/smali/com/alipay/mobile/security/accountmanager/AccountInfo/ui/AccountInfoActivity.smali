.class public Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "account_info_detail_main"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "action_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_head"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "qrcode"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "name"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_name"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "recharge"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "bindphone"
    .end annotation
.end field

.field h:Landroid/view/View$OnClickListener;

.field i:Landroid/view/View$OnClickListener;

.field j:Landroid/view/View$OnClickListener;

.field k:Landroid/view/View$OnClickListener;

.field l:Landroid/view/View$OnClickListener;

.field private final m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;

.field private q:Lcom/alipay/mobile/base/config/ConfigService;

.field private r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private s:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private t:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field private u:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-class v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->n:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/b;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/d;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/f;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/h;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/h;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->u:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initReCharge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getIsCertified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Y"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->text_light_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aC:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->text_light_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->q:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "Security_BindingPhone"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->q:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "Security_BindingPhone"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/high16 v4, 0x41a0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x4270

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightImageView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    float-to-int v3, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v4, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v4, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightImageView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->n:Z

    return v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->o:Z

    return v0
.end method

.method static synthetic m(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->o:Z

    return v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->s:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d()V

    return-void
.end method

.method static synthetic r(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b()V

    return-void
.end method

.method static synthetic s(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method public BindPhoneResult(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bind phone result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->s:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->c()V

    :cond_0
    return-void
.end method

.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->c()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->ak:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/a;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$dimen;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v0, 0x4270

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-static {p1, v1, v1}, Lcom/alipay/mobile/common/utils/ImageUtil;->getRoundAngleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightImage(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/alipay/mobile/common/utils/ImageUtil;->getRoundAngleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->p:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->t:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->u:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    move-object v3, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->t:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->s:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->q:Lcom/alipay/mobile/base/config/ConfigService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->s:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->p:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->s:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->c()V

    goto :goto_0
.end method
