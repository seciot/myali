.class public final Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;
.super Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cI:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cH:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->P:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/avatar/process/CropImageView;

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cJ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/avatar/process/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/avatar/process/a;-><init>(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/android/avatar/process/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/android/avatar/process/c;-><init>(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/android/avatar/process/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/avatar/process/b;-><init>(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->D:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->d()V

    return-void
.end method
