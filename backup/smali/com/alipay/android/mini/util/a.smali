.class final Lcom/alipay/android/mini/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/util/CardValidateInputUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/CardValidateInputUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v0}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    iget-object v2, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v2}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/mini/widget/YearMonthPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/mini/widget/YearMonthPicker;->getMonthStr(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a(Lcom/alipay/android/mini/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b(Lcom/alipay/android/mini/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    iget-object v1, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v1}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c(Lcom/alipay/android/mini/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v0}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->e(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v2}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v2}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->d(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v0}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->f(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/a;->a:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-static {v1}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->e(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v2, v3}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
