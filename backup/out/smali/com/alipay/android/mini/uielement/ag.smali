.class final Lcom/alipay/android/mini/uielement/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UISimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UISimplePassword;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(Lcom/alipay/android/mini/uielement/UISimplePassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(Lcom/alipay/android/mini/uielement/UISimplePassword;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/UISimplePassword;->b(Lcom/alipay/android/mini/uielement/UISimplePassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(Lcom/alipay/android/mini/uielement/UISimplePassword;I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->b(Lcom/alipay/android/mini/uielement/UISimplePassword;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->c(Lcom/alipay/android/mini/uielement/UISimplePassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/UISimplePassword;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ag;->a:Lcom/alipay/android/mini/uielement/UISimplePassword;

    new-instance v1, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
