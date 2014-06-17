.class public Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "security_checkuserid_fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userid_input"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userid_next_step"
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private e:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->e:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->e:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->e:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->e:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->e:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
