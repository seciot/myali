.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    const-string/jumbo v1, "20991231"

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u957f\u671f"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method public final a(III)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v0, p1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->b(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v0, p3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;I)I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    const-string/jumbo v1, "%d%02d%02d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->e(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "%d\u5e74%02d\u6708%02d\u65e5"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->e(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method
