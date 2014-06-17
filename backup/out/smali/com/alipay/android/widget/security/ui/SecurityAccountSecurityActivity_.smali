.class public final Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;


# instance fields
.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bn:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cl:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cG:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dN:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fI:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cm:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bF:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dc:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->O:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aQ:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bP:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eW:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bI:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$8;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$8;-><init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity_;->c()V

    return-void
.end method
