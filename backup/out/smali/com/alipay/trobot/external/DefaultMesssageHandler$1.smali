.class Lcom/alipay/trobot/external/DefaultMesssageHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/test/ui/core/EventObject;

.field private final synthetic b:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/alipay/trobot/external/DefaultMesssageHandler;


# direct methods
.method constructor <init>(Lcom/alipay/trobot/external/DefaultMesssageHandler;Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;->this$0:Lcom/alipay/trobot/external/DefaultMesssageHandler;

    iput-object p2, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;->a:Lcom/alipay/test/ui/core/EventObject;

    iput-object p3, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;->this$0:Lcom/alipay/trobot/external/DefaultMesssageHandler;

    iget-object v0, v0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->handler:Lcom/alipay/test/ui/core/IMesssageHandle;

    iget-object v1, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;->a:Lcom/alipay/test/ui/core/EventObject;

    iget-object v2, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;->b:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/alipay/test/ui/core/IMesssageHandle;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V

    return-void
.end method
