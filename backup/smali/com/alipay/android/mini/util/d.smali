.class final Lcom/alipay/android/mini/util/d;
.super Lcom/alipay/android/mini/event/MiniReadSmsArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/util/MiniSmsReader;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/MiniSmsReader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-direct {p0}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->a(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "rules"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->b(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "tmp_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->c(Lcom/alipay/android/mini/util/MiniSmsReader;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "read_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->d(Lcom/alipay/android/mini/util/MiniSmsReader;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reSendSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->f(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/mini/window/IUIForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v1}, Lcom/alipay/android/mini/util/MiniSmsReader;->e(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/IUIForm;->d(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/UIInput;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->b()V

    return-void
.end method

.method public final readSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->f(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/mini/window/IUIForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/d;->a:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v1}, Lcom/alipay/android/mini/util/MiniSmsReader;->e(Lcom/alipay/android/mini/util/MiniSmsReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/IUIForm;->d(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/mini/uielement/UIInput;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
