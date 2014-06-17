.class final Lcom/alipay/android/app/display/uielement/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bq;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/display/uielement/br;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->b:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/br;-><init>(Lcom/alipay/android/app/display/uielement/bq;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bq;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method
