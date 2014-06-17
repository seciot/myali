.class public Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;
.super Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_temp_authorization"
.end annotation


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/alipay/mobile/deviceAuthorization/ui/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->h:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    invoke-direct {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ab;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->i:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

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
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->h:Ljava/util/List;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ga:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->h:Ljava/util/List;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approvePageTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approvePageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->x:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveImgUrl:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveTextList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveTextList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->needPassword:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ci:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ch:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->confirmButtonText:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aM:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->confirmButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/aw;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/aw;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->cancelButtonText:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ae:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->cancelButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ax;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ax;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cP:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->i:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/ab;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->i:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->i:Lcom/alipay/mobile/deviceAuthorization/ui/ab;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/ab;->a(Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    :try_start_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "MOBILEPASSWORD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->g:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->callInputMethod()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->e:Landroid/widget/Button;

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
