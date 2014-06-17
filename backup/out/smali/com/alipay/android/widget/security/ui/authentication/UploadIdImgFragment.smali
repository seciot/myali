.class public Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "authentication_upload_id"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_id"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_id_date_tip"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "id_image_0"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "id_image_1"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "commit_btn"
    .end annotation
.end field

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/alipay/android/widget/security/service/a;

.field private o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private p:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private q:Landroid/os/Handler;

.field private r:[Ljava/lang/String;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;-><init>()V

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->j:I

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->k:I

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->p:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->r:[Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->t:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->m:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :cond_1
    :goto_0
    const-string/jumbo v1, ""

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "base64 string length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widget/security/ui/authentication/IdImageViewAcitvity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "idImageFiles"

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->r:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "curItem"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/io/File;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;

    invoke-direct {v0, p0, v5, v3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Ljava/util/concurrent/CountDownLatch;[Ljava/io/File;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Landroid/net/Uri;[Ljava/io/File;ILjava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->j:I

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->j:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->k:I

    return p1
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->k:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->l:I

    return p1
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->l:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected d()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    new-instance v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->p:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->p:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->p:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;->logonId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->m:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;->expireDate:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;->upImgUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;->downImgUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v2, "\u63d0\u4ea4\u4e2d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->n:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/a;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_3

    iget-boolean v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyResult;->success:Z

    if-eqz v0, :cond_2

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationUploadIdInfoActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyResult;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->q:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->n:Lcom/alipay/android/widget/security/service/a;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string/jumbo v2, "idImageFiles"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    array-length v2, v0

    new-array v2, v2, [Landroid/net/Uri;

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "uploadPaperView"

    const-string/jumbo v7, "realNameResultsView"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, "\u8eab\u4efd\u8bc1\u62cd\u6444\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u62cd\u6444\u3002"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
