.class public Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;
.implements Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_examination"
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/alipay/android/widget/security/service/b;

.field private C:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

.field private D:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

.field private E:Ljava/util/Timer;

.field private F:Ljava/util/TimerTask;

.field private G:Ljava/lang/String;

.field private H:Lcom/alipay/mobilesecurity/core/model/Tid;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Landroid/view/animation/Animation;

.field private P:Landroid/view/animation/Animation;

.field private Q:I

.field private R:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

.field private S:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "firstLineOfBlock"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_main_layout"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_score_img"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_examination_tip"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_examination_status"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_cellphone_bind"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_examination_nameCertified"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_examination_portraitSet"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_examination_gestureSet"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_examination_pushSet"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_score_number"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_score_unit"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_score_100"
    .end annotation
.end field

.field protected o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected p:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field protected q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected r:Ljava/lang/String;

.field s:Landroid/view/View$OnClickListener;

.field t:Landroid/view/View$OnClickListener;

.field u:Landroid/view/View$OnClickListener;

.field v:Landroid/view/View$OnClickListener;

.field w:Landroid/view/View$OnClickListener;

.field x:Landroid/view/View$OnClickListener;

.field private y:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->z:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->A:Z

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->F:Ljava/util/TimerTask;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->O:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->P:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$5;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$7;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$7;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$8;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$8;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->w:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;Lcom/alipay/mobile/framework/service/common/SchemeService;)Lcom/alipay/mobile/framework/service/common/SchemeService;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->S:Lcom/alipay/mobile/framework/service/common/SchemeService;

    return-object p1
.end method

.method private a(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->B:Lcom/alipay/android/widget/security/service/b;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widget/security/service/b;->b(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->C:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->B:Lcom/alipay/android/widget/security/service/b;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widget/security/service/b;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->D:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->D:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->getMobileBindNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setCellphone(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->K:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=onPostGetSecurityLevel], [msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->M:Z

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/service/common/SchemeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->S:Lcom/alipay/mobile/framework/service/common/SchemeService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->z:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->z:Z

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->A:Z

    return v0
.end method

.method static synthetic k(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->A:Z

    return v0
.end method

.method static synthetic l(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->L:Z

    return v0
.end method

.method static synthetic r(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->N:Z

    return v0
.end method

.method static synthetic v(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic w(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic x(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic y(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method public BindPhoneResult(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bind phone result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e()V

    :cond_0
    return-void
.end method

.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->Q:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " measured height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->Q:I

    int-to-float v1, v1

    const v2, 0x3f0a3d71

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->Q:I

    int-to-float v1, v1

    const v2, 0x3de147ae

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->Q:I

    int-to-float v1, v1

    const v2, 0x3df5c28f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e()V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "name certified receive action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "isCertified"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e()V

    :cond_1
    return-void
.end method

.method protected a(Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->P:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getScore()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->P:Landroid/view/animation/Animation;

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getIsShowArrowBindPhone()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->N:Z

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getFirstBlock()Ljava/util/Map;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorDarkBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getFirstBlock()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getIsShowArrowCertified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorDarkBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getFirstBlock()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getIsShowArrowGestureSet()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorDarkBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getFirstBlock()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getIsShowArrowPortraitSet()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorDarkBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_3
    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getFirstBlock()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getIsShowArrowPushSet()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorDarkBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_4
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->N:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->getFirstBlock()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_5
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_2
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_4
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected b()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bx:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cq:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->y:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->y:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->y:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-virtual {v1, p0}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;->a(Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->y:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->M:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bw:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->clearAnimation()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->d()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->D:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->D:Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->C:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->B:Lcom/alipay/android/widget/security/service/b;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->C:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->B:Lcom/alipay/android/widget/security/service/b;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->C:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/b;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V

    const-string/jumbo v0, "examinationSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iput-object v6, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->K:Z

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->M:Z

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->L:Z

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->I:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    iput-object v6, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    const-string/jumbo v1, "hideaccount"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->I:Z

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b()V

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->F:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->F:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->R:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/PushSettingService;->getPushState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->J:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/widget/security/app/SecurityGradeApp;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/widget/security/service/b;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widget/security/service/b;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->B:Lcom/alipay/android/widget/security/service/b;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->setLogonId(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->I:Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->setSetGesture(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->H:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->J:Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->setOpenPush(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;->securityCheck(Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)V

    goto/16 :goto_0

    :cond_6
    iput-boolean v3, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->I:Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=getSecurityDetectResult], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->M:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v6}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->R:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    :try_start_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$anim;->a:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->O:Landroid/view/animation/Animation;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$anim;->b:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->P:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->O:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->y:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->F:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->F:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "on resume isTableViewClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->L:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e()V

    :cond_0
    return-void
.end method
