package {
import model.impl.ClickStorage;
import model.IClickStorage;

import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

import view.save.ISaveControl;

import view.save.command.SaveDataCommand;
import view.save.mediator.SaveControlMediator;

import view.save.signal.SaveDataSignal;

import view.screen.IScreen;
import view.screen.command.ScreenChangeCommand;
import view.screen.mediator.ScreenChangeMediator;
import view.screen.signal.ScreenChangeSignal;

public class AppConfig implements IConfig
{
	[Inject]
	public var injector: IInjector;

	[Inject]
	public var mediatorMap: IMediatorMap;

	[Inject]
	public var signalCommandMap: ISignalCommandMap;


	public function configure(): void
	{
		injector.map(IClickStorage).toSingleton(ClickStorage);

		mediatorMap.map(IScreen).toMediator(ScreenChangeMediator);
		signalCommandMap.map(ScreenChangeSignal).toCommand(ScreenChangeCommand);

		mediatorMap.map(ISaveControl).toMediator(SaveControlMediator);
		signalCommandMap.map(SaveDataSignal).toCommand(SaveDataCommand);
	}

}
}