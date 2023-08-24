lineAccept(hCall, lpsUserUserInfo, dwSize) => DllCall('Tapi32\lineAccept', 'uint', hCall, 'astr', lpsUserUserInfo, 'uint', dwSize, 'int')
lineAddProvider(lpszProviderFilename, hwndOwner, lpdwPermanentProviderID) => DllCall('Tapi32\lineAddProvider', 'astr', lpszProviderFilename, 'ptr', hwndOwner, 'ptr', lpdwPermanentProviderID, 'int')
lineAddToConference(hConfCall, hConsultCall) => DllCall('Tapi32\lineAddToConference', 'uint', hConfCall, 'uint', hConsultCall, 'int')
lineAgentSpecific(hLine, dwAddressID, dwAgentExtensionIDIndex, lpParams, dwSize) => DllCall('Tapi32\lineAgentSpecific', 'uint', hLine, 'uint', dwAddressID, 'uint', dwAgentExtensionIDIndex, 'ptr', lpParams, 'uint', dwSize, 'int')
lineAnswer(hCall, lpsUserUserInfo, dwSize) => DllCall('Tapi32\lineAnswer', 'uint', hCall, 'astr', lpsUserUserInfo, 'uint', dwSize, 'int')
lineBlindTransfer(hCall, lpszDestAddress, dwCountryCode) => DllCall('Tapi32\lineBlindTransfer', 'uint', hCall, 'astr', lpszDestAddress, 'uint', dwCountryCode, 'int')
lineClose(hLine) => DllCall('Tapi32\lineClose', 'uint', hLine, 'int')
lineCompleteCall(hCall, lpdwCompletionID, dwCompletionMode, dwMessageID) => DllCall('Tapi32\lineCompleteCall', 'uint', hCall, 'ptr', lpdwCompletionID, 'uint', dwCompletionMode, 'uint', dwMessageID, 'int')
lineCompleteTransfer(hCall, hConsultCall, lphConfCall, dwTransferMode) => DllCall('Tapi32\lineCompleteTransfer', 'uint', hCall, 'uint', hConsultCall, 'ptr', lphConfCall, 'uint', dwTransferMode, 'int')
lineConfigDialog(dwDeviceID, hwndOwner, lpszDeviceClass) => DllCall('Tapi32\lineConfigDialog', 'uint', dwDeviceID, 'ptr', hwndOwner, 'astr', lpszDeviceClass, 'int')
lineConfigDialogEdit(dwDeviceID, hwndOwner, lpszDeviceClass, lpDeviceConfigIn, dwSize, lpDeviceConfigOut) => DllCall('Tapi32\lineConfigDialogEdit', 'uint', dwDeviceID, 'ptr', hwndOwner, 'astr', lpszDeviceClass, 'ptr', lpDeviceConfigIn, 'uint', dwSize, 'str', lpDeviceConfigOut, 'int')
lineConfigProvider(hwndOwner, dwPermanentProviderID) => DllCall('Tapi32\lineConfigProvider', 'ptr', hwndOwner, 'uint', dwPermanentProviderID, 'int')
lineCreateAgent(hLine, lpszAgentID, lpszAgentPIN, lphAgent) => DllCall('Tapi32\lineCreateAgent', 'uint', hLine, 'wstr', lpszAgentID, 'wstr', lpszAgentPIN, 'ptr', lphAgent, 'int')
lineCreateAgentSession(hLine, hAgent, lpszAgentPIN, dwWorkingAddressID, lpGroupID, lphAgentSession) => DllCall('Tapi32\lineCreateAgentSession', 'uint', hLine, 'uint', hAgent, 'wstr', lpszAgentPIN, 'uint', dwWorkingAddressID, 'ptr', lpGroupID, 'ptr', lphAgentSession, 'int')
lineDeallocateCall(hCall) => DllCall('Tapi32\lineDeallocateCall', 'uint', hCall, 'int')
lineDevSpecific(hLine, dwAddressID, hCall, lpParams, dwSize) => DllCall('Tapi32\lineDevSpecific', 'uint', hLine, 'uint', dwAddressID, 'uint', hCall, 'ptr', lpParams, 'uint', dwSize, 'int')
lineDevSpecificFeature(hLine, dwFeature, lpParams, dwSize) => DllCall('Tapi32\lineDevSpecificFeature', 'uint', hLine, 'uint', dwFeature, 'ptr', lpParams, 'uint', dwSize, 'int')
lineDial(hCall, lpszDestAddress, dwCountryCode) => DllCall('Tapi32\lineDial', 'uint', hCall, 'astr', lpszDestAddress, 'uint', dwCountryCode, 'int')
lineDrop(hCall, lpsUserUserInfo, dwSize) => DllCall('Tapi32\lineDrop', 'uint', hCall, 'astr', lpsUserUserInfo, 'uint', dwSize, 'int')
lineForward(hLine, bAllAddresses, dwAddressID, lpForwardList, dwNumRingsNoAnswer, lphConsultCall, lpCallParams) => DllCall('Tapi32\lineForward', 'uint', hLine, 'uint', bAllAddresses, 'uint', dwAddressID, 'ptr', lpForwardList, 'uint', dwNumRingsNoAnswer, 'ptr', lphConsultCall, 'ptr', lpCallParams, 'int')
lineGatherDigits(hCall, dwDigitModes, lpsDigits, dwNumDigits, lpszTerminationDigits, dwFirstDigitTimeout, dwInterDigitTimeout) => DllCall('Tapi32\lineGatherDigits', 'uint', hCall, 'uint', dwDigitModes, 'astr', lpsDigits, 'uint', dwNumDigits, 'astr', lpszTerminationDigits, 'uint', dwFirstDigitTimeout, 'uint', dwInterDigitTimeout, 'int')
lineGenerateDigits(hCall, dwDigitMode, lpszDigits, dwDuration) => DllCall('Tapi32\lineGenerateDigits', 'uint', hCall, 'uint', dwDigitMode, 'astr', lpszDigits, 'uint', dwDuration, 'int')
lineGenerateTone(hCall, dwToneMode, dwDuration, dwNumTones, lpTones) => DllCall('Tapi32\lineGenerateTone', 'uint', hCall, 'uint', dwToneMode, 'uint', dwDuration, 'uint', dwNumTones, 'ptr', lpTones, 'int')
lineGetAddressCaps(hLineApp, dwDeviceID, dwAddressID, dwAPIVersion, dwExtVersion, lpAddressCaps) => DllCall('Tapi32\lineGetAddressCaps', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAddressID, 'uint', dwAPIVersion, 'uint', dwExtVersion, 'ptr', lpAddressCaps, 'int')
lineGetAddressID(hLine, lpdwAddressID, dwAddressMode, lpsAddress, dwSize) => DllCall('Tapi32\lineGetAddressID', 'uint', hLine, 'ptr', lpdwAddressID, 'uint', dwAddressMode, 'astr', lpsAddress, 'uint', dwSize, 'int')
lineGetAddressStatus(hLine, dwAddressID, lpAddressStatus) => DllCall('Tapi32\lineGetAddressStatus', 'uint', hLine, 'uint', dwAddressID, 'ptr', lpAddressStatus, 'int')
lineGetAgentActivityList(hLine, dwAddressID, lpAgentActivityList) => DllCall('Tapi32\lineGetAgentActivityList', 'uint', hLine, 'uint', dwAddressID, 'ptr', lpAgentActivityList, 'int')
lineGetAgentCaps(hLineApp, dwDeviceID, dwAddressID, dwAppAPIVersion, lpAgentCaps) => DllCall('Tapi32\lineGetAgentCaps', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAddressID, 'uint', dwAppAPIVersion, 'ptr', lpAgentCaps, 'int')
lineGetAgentGroupList(hLine, dwAddressID, lpAgentGroupList) => DllCall('Tapi32\lineGetAgentGroupList', 'uint', hLine, 'uint', dwAddressID, 'ptr', lpAgentGroupList, 'int')
lineGetAgentInfo(hLine, hAgent, lpAgentInfo) => DllCall('Tapi32\lineGetAgentInfo', 'uint', hLine, 'uint', hAgent, 'ptr', lpAgentInfo, 'int')
lineGetAgentSessionInfo(hLine, hAgentSession, lpAgentSessionInfo) => DllCall('Tapi32\lineGetAgentSessionInfo', 'uint', hLine, 'uint', hAgentSession, 'ptr', lpAgentSessionInfo, 'int')
lineGetAgentSessionList(hLine, hAgent, lpAgentSessionList) => DllCall('Tapi32\lineGetAgentSessionList', 'uint', hLine, 'uint', hAgent, 'ptr', lpAgentSessionList, 'int')
lineGetAgentStatus(hLine, dwAddressID, lpAgentStatus) => DllCall('Tapi32\lineGetAgentStatus', 'uint', hLine, 'uint', dwAddressID, 'ptr', lpAgentStatus, 'int')
lineGetAppPriority(lpszAppFilename, dwMediaMode, lpExtensionID, dwRequestMode, lpExtensionName, lpdwPriority) => DllCall('Tapi32\lineGetAppPriority', 'astr', lpszAppFilename, 'uint', dwMediaMode, 'ptr', lpExtensionID, 'uint', dwRequestMode, 'str', lpExtensionName, 'ptr', lpdwPriority, 'int')
lineGetCallInfo(hCall, lpCallInfo) => DllCall('Tapi32\lineGetCallInfo', 'uint', hCall, 'ptr', lpCallInfo, 'int')
lineGetCallStatus(hCall, lpCallStatus) => DllCall('Tapi32\lineGetCallStatus', 'uint', hCall, 'ptr', lpCallStatus, 'int')
lineGetConfRelatedCalls(hCall, lpCallList) => DllCall('Tapi32\lineGetConfRelatedCalls', 'uint', hCall, 'ptr', lpCallList, 'int')
lineGetCountry(dwCountryID, dwAPIVersion, lpLineCountryList) => DllCall('Tapi32\lineGetCountry', 'uint', dwCountryID, 'uint', dwAPIVersion, 'ptr', lpLineCountryList, 'int')
lineGetDevCaps(hLineApp, dwDeviceID, dwAPIVersion, dwExtVersion, lpLineDevCaps) => DllCall('Tapi32\lineGetDevCaps', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAPIVersion, 'uint', dwExtVersion, 'ptr', lpLineDevCaps, 'int')
lineGetDevConfig(dwDeviceID, lpDeviceConfig, lpszDeviceClass) => DllCall('Tapi32\lineGetDevConfig', 'uint', dwDeviceID, 'str', lpDeviceConfig, 'astr', lpszDeviceClass, 'int')
lineGetGroupList(hLine, lpGroupList) => DllCall('Tapi32\lineGetGroupList', 'uint', hLine, 'ptr', lpGroupList, 'int')
lineGetID(hLine, dwAddressID, hCall, dwSelect, lpDeviceID, lpszDeviceClass) => DllCall('Tapi32\lineGetID', 'uint', hLine, 'uint', dwAddressID, 'uint', hCall, 'uint', dwSelect, 'str', lpDeviceID, 'astr', lpszDeviceClass, 'int')
lineGetIcon(dwDeviceID, lpszDeviceClass, lphIcon) => DllCall('Tapi32\lineGetIcon', 'uint', dwDeviceID, 'astr', lpszDeviceClass, 'ptr', lphIcon, 'int')
lineGetLineDevStatus(hLine, lpLineDevStatus) => DllCall('Tapi32\lineGetLineDevStatus', 'uint', hLine, 'ptr', lpLineDevStatus, 'int')
lineGetMessage(hLineApp, lpMessage, dwTimeout) => DllCall('Tapi32\lineGetMessage', 'uint', hLineApp, 'ptr', lpMessage, 'uint', dwTimeout, 'int')
lineGetNewCalls(hLine, dwAddressID, dwSelect, lpCallList) => DllCall('Tapi32\lineGetNewCalls', 'uint', hLine, 'uint', dwAddressID, 'uint', dwSelect, 'ptr', lpCallList, 'int')
lineGetNumRings(hLine, dwAddressID, lpdwNumRings) => DllCall('Tapi32\lineGetNumRings', 'uint', hLine, 'uint', dwAddressID, 'ptr', lpdwNumRings, 'int')
lineGetProviderList(dwAPIVersion, lpProviderList) => DllCall('Tapi32\lineGetProviderList', 'uint', dwAPIVersion, 'ptr', lpProviderList, 'int')
lineGetProxyStatus(hLineApp, dwDeviceID, dwAppAPIVersion, lpLineProxyRequestList) => DllCall('Tapi32\lineGetProxyStatus', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAppAPIVersion, 'ptr', lpLineProxyRequestList, 'int')
lineGetQueueInfo(hLine, dwQueueID, lpLineQueueInfo) => DllCall('Tapi32\lineGetQueueInfo', 'uint', hLine, 'uint', dwQueueID, 'ptr', lpLineQueueInfo, 'int')
lineGetQueueList(hLine, lpGroupID, lpQueueList) => DllCall('Tapi32\lineGetQueueList', 'uint', hLine, 'ptr', lpGroupID, 'ptr', lpQueueList, 'int')
lineGetRequest(hLineApp, dwRequestMode, lpRequestBuffer) => DllCall('Tapi32\lineGetRequest', 'uint', hLineApp, 'uint', dwRequestMode, 'ptr', lpRequestBuffer, 'int')
lineGetStatusMessages(hLine, lpdwLineStates, lpdwAddressStates) => DllCall('Tapi32\lineGetStatusMessages', 'uint', hLine, 'ptr', lpdwLineStates, 'ptr', lpdwAddressStates, 'int')
lineGetTranslateCaps(hLineApp, dwAPIVersion, lpTranslateCaps) => DllCall('Tapi32\lineGetTranslateCaps', 'uint', hLineApp, 'uint', dwAPIVersion, 'ptr', lpTranslateCaps, 'int')
lineHandoff(hCall, lpszFileName, dwMediaMode) => DllCall('Tapi32\lineHandoff', 'uint', hCall, 'astr', lpszFileName, 'uint', dwMediaMode, 'int')
lineHold(hCall) => DllCall('Tapi32\lineHold', 'uint', hCall, 'int')
lineInitialize(lphLineApp, hInstance, lpfnCallback, lpszAppName, lpdwNumDevs) => DllCall('Tapi32\lineInitialize', 'ptr', lphLineApp, 'ptr', hInstance, 'ptr', lpfnCallback, 'astr', lpszAppName, 'ptr', lpdwNumDevs, 'int')
lineInitializeEx(lphLineApp, hInstance, lpfnCallback, lpszFriendlyAppName, lpdwNumDevs, lpdwAPIVersion, lpLineInitializeExParams) => DllCall('Tapi32\lineInitializeEx', 'ptr', lphLineApp, 'ptr', hInstance, 'ptr', lpfnCallback, 'astr', lpszFriendlyAppName, 'ptr', lpdwNumDevs, 'ptr', lpdwAPIVersion, 'ptr', lpLineInitializeExParams, 'int')
lineMakeCall(hLine, lphCall, lpszDestAddress, dwCountryCode, lpCallParams) => DllCall('Tapi32\lineMakeCall', 'uint', hLine, 'ptr', lphCall, 'astr', lpszDestAddress, 'uint', dwCountryCode, 'ptr', lpCallParams, 'int')
lineMonitorDigits(hCall, dwDigitModes) => DllCall('Tapi32\lineMonitorDigits', 'uint', hCall, 'uint', dwDigitModes, 'int')
lineMonitorMedia(hCall, dwMediaModes) => DllCall('Tapi32\lineMonitorMedia', 'uint', hCall, 'uint', dwMediaModes, 'int')
lineMonitorTones(hCall, lpToneList, dwNumEntries) => DllCall('Tapi32\lineMonitorTones', 'uint', hCall, 'ptr', lpToneList, 'uint', dwNumEntries, 'int')
lineNegotiateAPIVersion(hLineApp, dwDeviceID, dwAPILowVersion, dwAPIHighVersion, lpdwAPIVersion, lpExtensionID) => DllCall('Tapi32\lineNegotiateAPIVersion', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAPILowVersion, 'uint', dwAPIHighVersion, 'ptr', lpdwAPIVersion, 'ptr', lpExtensionID, 'int')
lineNegotiateExtVersion(hLineApp, dwDeviceID, dwAPIVersion, dwExtLowVersion, dwExtHighVersion, lpdwExtVersion) => DllCall('Tapi32\lineNegotiateExtVersion', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAPIVersion, 'uint', dwExtLowVersion, 'uint', dwExtHighVersion, 'ptr', lpdwExtVersion, 'int')
lineOpen(hLineApp, dwDeviceID, lphLine, dwAPIVersion, dwExtVersion, dwCallbackInstance, dwPrivileges, dwMediaModes, lpCallParams) => DllCall('Tapi32\lineOpen', 'uint', hLineApp, 'uint', dwDeviceID, 'ptr', lphLine, 'uint', dwAPIVersion, 'uint', dwExtVersion, 'uptr', dwCallbackInstance, 'uint', dwPrivileges, 'uint', dwMediaModes, 'ptr', lpCallParams, 'int')
linePark(hCall, dwParkMode, lpszDirAddress, lpNonDirAddress) => DllCall('Tapi32\linePark', 'uint', hCall, 'uint', dwParkMode, 'astr', lpszDirAddress, 'str', lpNonDirAddress, 'int')
linePickup(hLine, dwAddressID, lphCall, lpszDestAddress, lpszGroupID) => DllCall('Tapi32\linePickup', 'uint', hLine, 'uint', dwAddressID, 'ptr', lphCall, 'astr', lpszDestAddress, 'astr', lpszGroupID, 'int')
linePrepareAddToConference(hConfCall, lphConsultCall, lpCallParams) => DllCall('Tapi32\linePrepareAddToConference', 'uint', hConfCall, 'ptr', lphConsultCall, 'ptr', lpCallParams, 'int')
lineProxyMessage(hLine, hCall, dwMsg, dwParam1, dwParam2, dwParam3) => DllCall('Tapi32\lineProxyMessage', 'uint', hLine, 'uint', hCall, 'uint', dwMsg, 'uint', dwParam1, 'uint', dwParam2, 'uint', dwParam3, 'int')
lineProxyResponse(hLine, lpProxyRequest, dwResult) => DllCall('Tapi32\lineProxyResponse', 'uint', hLine, 'ptr', lpProxyRequest, 'uint', dwResult, 'int')
lineRedirect(hCall, lpszDestAddress, dwCountryCode) => DllCall('Tapi32\lineRedirect', 'uint', hCall, 'astr', lpszDestAddress, 'uint', dwCountryCode, 'int')
lineRegisterRequestRecipient(hLineApp, dwRegistrationInstance, dwRequestMode, bEnable) => DllCall('Tapi32\lineRegisterRequestRecipient', 'uint', hLineApp, 'uint', dwRegistrationInstance, 'uint', dwRequestMode, 'uint', bEnable, 'int')
lineReleaseUserUserInfo(hCall) => DllCall('Tapi32\lineReleaseUserUserInfo', 'uint', hCall, 'int')
lineRemoveFromConference(hCall) => DllCall('Tapi32\lineRemoveFromConference', 'uint', hCall, 'int')
lineRemoveProvider(dwPermanentProviderID, hwndOwner) => DllCall('Tapi32\lineRemoveProvider', 'uint', dwPermanentProviderID, 'ptr', hwndOwner, 'int')
lineSecureCall(hCall) => DllCall('Tapi32\lineSecureCall', 'uint', hCall, 'int')
lineSendUserUserInfo(hCall, lpsUserUserInfo, dwSize) => DllCall('Tapi32\lineSendUserUserInfo', 'uint', hCall, 'astr', lpsUserUserInfo, 'uint', dwSize, 'int')
lineSetAgentActivity(hLine, dwAddressID, dwActivityID) => DllCall('Tapi32\lineSetAgentActivity', 'uint', hLine, 'uint', dwAddressID, 'uint', dwActivityID, 'int')
lineSetAgentGroup(hLine, dwAddressID, lpAgentGroupList) => DllCall('Tapi32\lineSetAgentGroup', 'uint', hLine, 'uint', dwAddressID, 'ptr', lpAgentGroupList, 'int')
lineSetAgentMeasurementPeriod(hLine, hAgent, dwMeasurementPeriod) => DllCall('Tapi32\lineSetAgentMeasurementPeriod', 'uint', hLine, 'uint', hAgent, 'uint', dwMeasurementPeriod, 'int')
lineSetAgentSessionState(hLine, hAgentSession, dwAgentSessionState, dwNextAgentSessionState) => DllCall('Tapi32\lineSetAgentSessionState', 'uint', hLine, 'uint', hAgentSession, 'uint', dwAgentSessionState, 'uint', dwNextAgentSessionState, 'int')
lineSetAgentState(hLine, dwAddressID, dwAgentState, dwNextAgentState) => DllCall('Tapi32\lineSetAgentState', 'uint', hLine, 'uint', dwAddressID, 'uint', dwAgentState, 'uint', dwNextAgentState, 'int')
lineSetAgentStateEx(hLine, hAgent, dwAgentState, dwNextAgentState) => DllCall('Tapi32\lineSetAgentStateEx', 'uint', hLine, 'uint', hAgent, 'uint', dwAgentState, 'uint', dwNextAgentState, 'int')
lineSetAppPriority(lpszAppFilename, dwMediaMode, lpExtensionID, dwRequestMode, lpszExtensionName, dwPriority) => DllCall('Tapi32\lineSetAppPriority', 'astr', lpszAppFilename, 'uint', dwMediaMode, 'ptr', lpExtensionID, 'uint', dwRequestMode, 'astr', lpszExtensionName, 'uint', dwPriority, 'int')
lineSetAppSpecific(hCall, dwAppSpecific) => DllCall('Tapi32\lineSetAppSpecific', 'uint', hCall, 'uint', dwAppSpecific, 'int')
lineSetCallData(hCall, lpCallData, dwSize) => DllCall('Tapi32\lineSetCallData', 'uint', hCall, 'ptr', lpCallData, 'uint', dwSize, 'int')
lineSetCallParams(hCall, dwBearerMode, dwMinRate, dwMaxRate, lpDialParams) => DllCall('Tapi32\lineSetCallParams', 'uint', hCall, 'uint', dwBearerMode, 'uint', dwMinRate, 'uint', dwMaxRate, 'ptr', lpDialParams, 'int')
lineSetCallPrivilege(hCall, dwCallPrivilege) => DllCall('Tapi32\lineSetCallPrivilege', 'uint', hCall, 'uint', dwCallPrivilege, 'int')
lineSetCallQualityOfService(hCall, lpSendingFlowspec, dwSendingFlowspecSize, lpReceivingFlowspec, dwReceivingFlowspecSize) => DllCall('Tapi32\lineSetCallQualityOfService', 'uint', hCall, 'ptr', lpSendingFlowspec, 'uint', dwSendingFlowspecSize, 'ptr', lpReceivingFlowspec, 'uint', dwReceivingFlowspecSize, 'int')
lineSetCallTreatment(hCall, dwTreatment) => DllCall('Tapi32\lineSetCallTreatment', 'uint', hCall, 'uint', dwTreatment, 'int')
lineSetCurrentLocation(hLineApp, dwLocation) => DllCall('Tapi32\lineSetCurrentLocation', 'uint', hLineApp, 'uint', dwLocation, 'int')
lineSetDevConfig(dwDeviceID, lpDeviceConfig, dwSize, lpszDeviceClass) => DllCall('Tapi32\lineSetDevConfig', 'uint', dwDeviceID, 'ptr', lpDeviceConfig, 'uint', dwSize, 'astr', lpszDeviceClass, 'int')
lineSetLineDevStatus(hLine, dwStatusToChange, fStatus) => DllCall('Tapi32\lineSetLineDevStatus', 'uint', hLine, 'uint', dwStatusToChange, 'uint', fStatus, 'int')
lineSetMediaControl(hLine, dwAddressID, hCall, dwSelect, lpDigitList, dwDigitNumEntries, lpMediaList, dwMediaNumEntries, lpToneList, dwToneNumEntries, lpCallStateList, dwCallStateNumEntries) => DllCall('Tapi32\lineSetMediaControl', 'uint', hLine, 'uint', dwAddressID, 'uint', hCall, 'uint', dwSelect, 'ptr', lpDigitList, 'uint', dwDigitNumEntries, 'ptr', lpMediaList, 'uint', dwMediaNumEntries, 'ptr', lpToneList, 'uint', dwToneNumEntries, 'ptr', lpCallStateList, 'uint', dwCallStateNumEntries, 'int')
lineSetMediaMode(hCall, dwMediaModes) => DllCall('Tapi32\lineSetMediaMode', 'uint', hCall, 'uint', dwMediaModes, 'int')
lineSetNumRings(hLine, dwAddressID, dwNumRings) => DllCall('Tapi32\lineSetNumRings', 'uint', hLine, 'uint', dwAddressID, 'uint', dwNumRings, 'int')
lineSetQueueMeasurementPeriod(hLine, dwQueueID, dwMeasurementPeriod) => DllCall('Tapi32\lineSetQueueMeasurementPeriod', 'uint', hLine, 'uint', dwQueueID, 'uint', dwMeasurementPeriod, 'int')
lineSetStatusMessages(hLine, dwLineStates, dwAddressStates) => DllCall('Tapi32\lineSetStatusMessages', 'uint', hLine, 'uint', dwLineStates, 'uint', dwAddressStates, 'int')
lineSetTerminal(hLine, dwAddressID, hCall, dwSelect, dwTerminalModes, dwTerminalID, bEnable) => DllCall('Tapi32\lineSetTerminal', 'uint', hLine, 'uint', dwAddressID, 'uint', hCall, 'uint', dwSelect, 'uint', dwTerminalModes, 'uint', dwTerminalID, 'uint', bEnable, 'int')
lineSetTollList(hLineApp, dwDeviceID, lpszAddressIn, dwTollListOption) => DllCall('Tapi32\lineSetTollList', 'uint', hLineApp, 'uint', dwDeviceID, 'astr', lpszAddressIn, 'uint', dwTollListOption, 'int')
lineSetupConference(hCall, hLine, lphConfCall, lphConsultCall, dwNumParties, lpCallParams) => DllCall('Tapi32\lineSetupConference', 'uint', hCall, 'uint', hLine, 'ptr', lphConfCall, 'ptr', lphConsultCall, 'uint', dwNumParties, 'ptr', lpCallParams, 'int')
lineSetupTransfer(hCall, lphConsultCall, lpCallParams) => DllCall('Tapi32\lineSetupTransfer', 'uint', hCall, 'ptr', lphConsultCall, 'ptr', lpCallParams, 'int')
lineShutdown(hLineApp) => DllCall('Tapi32\lineShutdown', 'uint', hLineApp, 'int')
lineSwapHold(hActiveCall, hHeldCall) => DllCall('Tapi32\lineSwapHold', 'uint', hActiveCall, 'uint', hHeldCall, 'int')
lineTranslateAddress(hLineApp, dwDeviceID, dwAPIVersion, lpszAddressIn, dwCard, dwTranslateOptions, lpTranslateOutput) => DllCall('Tapi32\lineTranslateAddress', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAPIVersion, 'astr', lpszAddressIn, 'uint', dwCard, 'uint', dwTranslateOptions, 'ptr', lpTranslateOutput, 'int')
lineTranslateDialog(hLineApp, dwDeviceID, dwAPIVersion, hwndOwner, lpszAddressIn) => DllCall('Tapi32\lineTranslateDialog', 'uint', hLineApp, 'uint', dwDeviceID, 'uint', dwAPIVersion, 'ptr', hwndOwner, 'astr', lpszAddressIn, 'int')
lineUncompleteCall(hLine, dwCompletionID) => DllCall('Tapi32\lineUncompleteCall', 'uint', hLine, 'uint', dwCompletionID, 'int')
lineUnhold(hCall) => DllCall('Tapi32\lineUnhold', 'uint', hCall, 'int')
lineUnpark(hLine, dwAddressID, lphCall, lpszDestAddress) => DllCall('Tapi32\lineUnpark', 'uint', hLine, 'uint', dwAddressID, 'ptr', lphCall, 'astr', lpszDestAddress, 'int')
phoneClose(hPhone) => DllCall('Tapi32\phoneClose', 'uint', hPhone, 'int')
phoneConfigDialog(dwDeviceID, hwndOwner, lpszDeviceClass) => DllCall('Tapi32\phoneConfigDialog', 'uint', dwDeviceID, 'ptr', hwndOwner, 'astr', lpszDeviceClass, 'int')
phoneDevSpecific(hPhone, lpParams, dwSize) => DllCall('Tapi32\phoneDevSpecific', 'uint', hPhone, 'ptr', lpParams, 'uint', dwSize, 'int')
phoneGetButtonInfo(hPhone, dwButtonLampID, lpButtonInfo) => DllCall('Tapi32\phoneGetButtonInfo', 'uint', hPhone, 'uint', dwButtonLampID, 'ptr', lpButtonInfo, 'int')
phoneGetData(hPhone, dwDataID, lpData, dwSize) => DllCall('Tapi32\phoneGetData', 'uint', hPhone, 'uint', dwDataID, 'ptr', lpData, 'uint', dwSize, 'int')
phoneGetDevCaps(hPhoneApp, dwDeviceID, dwAPIVersion, dwExtVersion, lpPhoneCaps) => DllCall('Tapi32\phoneGetDevCaps', 'uint', hPhoneApp, 'uint', dwDeviceID, 'uint', dwAPIVersion, 'uint', dwExtVersion, 'ptr', lpPhoneCaps, 'int')
phoneGetDisplay(hPhone, lpDisplay) => DllCall('Tapi32\phoneGetDisplay', 'uint', hPhone, 'str', lpDisplay, 'int')
phoneGetGain(hPhone, dwHookSwitchDev, lpdwGain) => DllCall('Tapi32\phoneGetGain', 'uint', hPhone, 'uint', dwHookSwitchDev, 'ptr', lpdwGain, 'int')
phoneGetHookSwitch(hPhone, lpdwHookSwitchDevs) => DllCall('Tapi32\phoneGetHookSwitch', 'uint', hPhone, 'ptr', lpdwHookSwitchDevs, 'int')
phoneGetID(hPhone, lpDeviceID, lpszDeviceClass) => DllCall('Tapi32\phoneGetID', 'uint', hPhone, 'str', lpDeviceID, 'astr', lpszDeviceClass, 'int')
phoneGetIcon(dwDeviceID, lpszDeviceClass, lphIcon) => DllCall('Tapi32\phoneGetIcon', 'uint', dwDeviceID, 'astr', lpszDeviceClass, 'ptr', lphIcon, 'int')
phoneGetLamp(hPhone, dwButtonLampID, lpdwLampMode) => DllCall('Tapi32\phoneGetLamp', 'uint', hPhone, 'uint', dwButtonLampID, 'ptr', lpdwLampMode, 'int')
phoneGetMessage(hPhoneApp, lpMessage, dwTimeout) => DllCall('Tapi32\phoneGetMessage', 'uint', hPhoneApp, 'ptr', lpMessage, 'uint', dwTimeout, 'int')
phoneGetRing(hPhone, lpdwRingMode, lpdwVolume) => DllCall('Tapi32\phoneGetRing', 'uint', hPhone, 'ptr', lpdwRingMode, 'ptr', lpdwVolume, 'int')
phoneGetStatus(hPhone, lpPhoneStatus) => DllCall('Tapi32\phoneGetStatus', 'uint', hPhone, 'ptr', lpPhoneStatus, 'int')
phoneGetStatusMessages(hPhone, lpdwPhoneStates, lpdwButtonModes, lpdwButtonStates) => DllCall('Tapi32\phoneGetStatusMessages', 'uint', hPhone, 'ptr', lpdwPhoneStates, 'ptr', lpdwButtonModes, 'ptr', lpdwButtonStates, 'int')
phoneGetVolume(hPhone, dwHookSwitchDev, lpdwVolume) => DllCall('Tapi32\phoneGetVolume', 'uint', hPhone, 'uint', dwHookSwitchDev, 'ptr', lpdwVolume, 'int')
phoneInitialize(lphPhoneApp, hInstance, lpfnCallback, lpszAppName, lpdwNumDevs) => DllCall('Tapi32\phoneInitialize', 'ptr', lphPhoneApp, 'ptr', hInstance, 'ptr', lpfnCallback, 'astr', lpszAppName, 'ptr', lpdwNumDevs, 'int')
phoneInitializeEx(lphPhoneApp, hInstance, lpfnCallback, lpszFriendlyAppName, lpdwNumDevs, lpdwAPIVersion, lpPhoneInitializeExParams) => DllCall('Tapi32\phoneInitializeEx', 'ptr', lphPhoneApp, 'ptr', hInstance, 'ptr', lpfnCallback, 'astr', lpszFriendlyAppName, 'ptr', lpdwNumDevs, 'ptr', lpdwAPIVersion, 'ptr', lpPhoneInitializeExParams, 'int')
phoneNegotiateAPIVersion(hPhoneApp, dwDeviceID, dwAPILowVersion, dwAPIHighVersion, lpdwAPIVersion, lpExtensionID) => DllCall('Tapi32\phoneNegotiateAPIVersion', 'uint', hPhoneApp, 'uint', dwDeviceID, 'uint', dwAPILowVersion, 'uint', dwAPIHighVersion, 'ptr', lpdwAPIVersion, 'ptr', lpExtensionID, 'int')
phoneNegotiateExtVersion(hPhoneApp, dwDeviceID, dwAPIVersion, dwExtLowVersion, dwExtHighVersion, lpdwExtVersion) => DllCall('Tapi32\phoneNegotiateExtVersion', 'uint', hPhoneApp, 'uint', dwDeviceID, 'uint', dwAPIVersion, 'uint', dwExtLowVersion, 'uint', dwExtHighVersion, 'ptr', lpdwExtVersion, 'int')
phoneOpen(hPhoneApp, dwDeviceID, lphPhone, dwAPIVersion, dwExtVersion, dwCallbackInstance, dwPrivilege) => DllCall('Tapi32\phoneOpen', 'uint', hPhoneApp, 'uint', dwDeviceID, 'ptr', lphPhone, 'uint', dwAPIVersion, 'uint', dwExtVersion, 'uptr', dwCallbackInstance, 'uint', dwPrivilege, 'int')
phoneSetButtonInfo(hPhone, dwButtonLampID, lpButtonInfo) => DllCall('Tapi32\phoneSetButtonInfo', 'uint', hPhone, 'uint', dwButtonLampID, 'ptr', lpButtonInfo, 'int')
phoneSetData(hPhone, dwDataID, lpData, dwSize) => DllCall('Tapi32\phoneSetData', 'uint', hPhone, 'uint', dwDataID, 'ptr', lpData, 'uint', dwSize, 'int')
phoneSetDisplay(hPhone, dwRow, dwColumn, lpsDisplay, dwSize) => DllCall('Tapi32\phoneSetDisplay', 'uint', hPhone, 'uint', dwRow, 'uint', dwColumn, 'astr', lpsDisplay, 'uint', dwSize, 'int')
phoneSetGain(hPhone, dwHookSwitchDev, dwGain) => DllCall('Tapi32\phoneSetGain', 'uint', hPhone, 'uint', dwHookSwitchDev, 'uint', dwGain, 'int')
phoneSetHookSwitch(hPhone, dwHookSwitchDevs, dwHookSwitchMode) => DllCall('Tapi32\phoneSetHookSwitch', 'uint', hPhone, 'uint', dwHookSwitchDevs, 'uint', dwHookSwitchMode, 'int')
phoneSetLamp(hPhone, dwButtonLampID, dwLampMode) => DllCall('Tapi32\phoneSetLamp', 'uint', hPhone, 'uint', dwButtonLampID, 'uint', dwLampMode, 'int')
phoneSetRing(hPhone, dwRingMode, dwVolume) => DllCall('Tapi32\phoneSetRing', 'uint', hPhone, 'uint', dwRingMode, 'uint', dwVolume, 'int')
phoneSetStatusMessages(hPhone, dwPhoneStates, dwButtonModes, dwButtonStates) => DllCall('Tapi32\phoneSetStatusMessages', 'uint', hPhone, 'uint', dwPhoneStates, 'uint', dwButtonModes, 'uint', dwButtonStates, 'int')
phoneSetVolume(hPhone, dwHookSwitchDev, dwVolume) => DllCall('Tapi32\phoneSetVolume', 'uint', hPhone, 'uint', dwHookSwitchDev, 'uint', dwVolume, 'int')
phoneShutdown(hPhoneApp) => DllCall('Tapi32\phoneShutdown', 'uint', hPhoneApp, 'int')
tapiGetLocationInfo(lpszCountryCode, lpszCityCode) => DllCall('Tapi32\tapiGetLocationInfo', 'astr', lpszCountryCode, 'astr', lpszCityCode, 'int')
tapiRequestDrop(hWnd, wRequestID) => DllCall('Tapi32\tapiRequestDrop', 'ptr', hWnd, 'uptr', wRequestID, 'int')
tapiRequestMakeCall(lpszDestAddress, lpszAppName, lpszCalledParty, lpszComment) => DllCall('Tapi32\tapiRequestMakeCall', 'astr', lpszDestAddress, 'astr', lpszAppName, 'astr', lpszCalledParty, 'astr', lpszComment, 'int')