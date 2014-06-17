.class public Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static g:Ljava/lang/Integer;


# instance fields
.field private b:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private c:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APButton;

.field private f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private h:Z

.field private i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[1][3-8][0-9]{9}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->h:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->j:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->j:Z

    return p1
.end method

.method private b()V
    .locals 8

    const/16 v7, 0xf0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/about/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/b;-><init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/about/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/c;-><init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/about/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/d;-><init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->g:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    instance-of v5, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "mMax"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->g:Ljava/lang/Integer;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->k:Z

    return p1
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->h:Z

    return v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->ae:I

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->ad:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;
    .locals 3

    new-instance v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->h:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userName:Ljava/lang/String;

    :cond_0
    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->mobileNo:Ljava/lang/String;

    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->osName:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userAgent:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->productID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->productVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->proposalMsg:Ljava/lang/String;

    const-string/jumbo v0, "proposal"

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->proposalType:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/about/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/e;-><init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->T:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aV:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ge:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/about/ui/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/about/ui/a;-><init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$color;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v2, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;

    const-string/jumbo v3, "3,8"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setApprerance(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->h:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->h:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->j:Z

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->b()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
