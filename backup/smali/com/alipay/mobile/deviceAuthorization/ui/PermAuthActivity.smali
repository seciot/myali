.class public Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;
.super Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_perm_auth"
.end annotation


# instance fields
.field private e:Landroid/widget/ListView;

.field private f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

.field private g:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ScrollView;

.field private j:Landroid/os/Handler;

.field private k:Lcom/alipay/mobile/deviceAuthorization/ui/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    invoke-direct {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ab;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->k:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V
    .locals 6

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->setContentView(I)V

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approvePageTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approvePageTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetLogoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aT:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetLogoUrl:Ljava/lang/String;

    invoke-super {p0, v0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aU:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aS:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authOptionTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->D:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authOptionTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authOptions:Ljava/util/List;

    if-eqz v0, :cond_5

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/a/d;

    iget-object v3, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authOptions:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/deviceAuthorization/a/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fP:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->i:Landroid/widget/ScrollView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aM:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/ao;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/ao;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->needPassword:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/deviceAuthorization/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ci:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ch:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    :cond_6
    :goto_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_a

    move v0, v1

    move v2, v1

    :goto_1
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_9

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/deviceAuthorization/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cP:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->k:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/ab;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->k:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->k:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/ab;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_9
    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "MOBILEPASSWORD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->callInputMethod()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->onResume()V

    return-void
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->h:Landroid/widget/Button;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
